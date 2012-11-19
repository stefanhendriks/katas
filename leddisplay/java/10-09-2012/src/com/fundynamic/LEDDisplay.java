package com.fundynamic;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class LEDDisplay {

    private static final int MAX_DISPLAY_LINES = 5;

    private static final String[][] DIGITS = new String[][]{
        { " - ", "   ", " - ", " - ", "   ", " - ", " - ", " - ", " - ", " - " },
        { "| |", "  |", "  |", "  |", "| |", "|  ", "|  ", "  |", "| |", "| |" },
        { "   ", "   ", " - ", " - ", " - ", " - ", " - ", "   ", " - ", " - " },
        { "| |", "  |", "|  ", "  |", "  |", "  |", "| |", "  |", "| |", "  |" },
        { " - ", "   ", " - ", " - ", "   ", " - ", " - ", "   ", " - ", " - " }
	};

	public String convert(int value) {
		List<String[]> digits = getDigits(value);
		String[] lines = convertToLines(digits);
		return renderLines(lines);
	}

	private List<String[]> getDigits(int value) {
		NumberString numberString = new NumberString(value);
		List<String[]> digits = new ArrayList<String[]>();
		for (int digit : numberString.digits()) {
            digits.add(getCol(digit));
		}
		return digits;
	}

    private static String[] getCol(int row) {
        String[] column = new String[DIGITS.length];

        for (int line = 0; line < DIGITS.length; line++) {
            column[line] = DIGITS[line][row];
        }
        return column;
    }

	private String[] convertToLines(List<String[]> digits) {
		String[] result = new String[MAX_DISPLAY_LINES];
		for (int line = 0; line < MAX_DISPLAY_LINES; line++) {
			result[line] = digits.get(0)[line];
			for (int digit = 1; digit < digits.size(); digit++) {
				result[line] += " " + digits.get(digit)[line];
			}
		}
		return result;
	}

	private String renderLines(String... lines) {
		return StringUtils.join(lines, "\n");
	}


	private class NumberString {

		private final String text;

		public NumberString(int value) {
			text = "" + value;
		}

        private int charToInt(char c){
            // offset c by 48 to get 0-9 from '0' to '9' based on ASCII table
            return c - 48;
        }

        public Integer[] digits() {
			List<Integer> digits = new ArrayList<Integer>();
			for (char c : text.toCharArray()) {
				digits.add(charToInt(c));
			}
			return digits.toArray(new Integer[digits.size()]);
		}
	}
}
