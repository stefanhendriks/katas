import org.apache.commons.lang3.StringUtils;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import com.fundynamic.LEDDisplay;

public class LEDDisplayTest {

	@Test
	public void shouldConvertNumberOne() {
		String expectedDisplay =
				  makeDigit(
							 "   ",
							 "  |",
							 "   ",
							 "  |",
							 "   "
				  );
		final String result = makeLEDDisplay().convert(1);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertNumberTwo() {
		String expectedDisplay =
				  makeDigit(
							 " - ",
							 "  |",
							 " - ",
							 "|  ",
							 " - "
				  );
		final String result = makeLEDDisplay().convert(2);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertNumberThree() {
		String expectedDisplay =
				  makeDigit(
							 " - ",
							 "  |",
							 " - ",
							 "  |",
							 " - "
				  );
		final String result = makeLEDDisplay().convert(3);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertNumberZero() {
		String expectedDisplay =
				  makeDigit(
							 " - ",
							 "| |",
							 "   ",
							 "| |",
							 " - "
				  );
		final int value = 0;
		final String result = makeLEDDisplay().convert(value);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertNumberEleven() {
		LEDDisplay ledDisplay = makeLEDDisplay();
		String expectedDisplay =
				  makeDigit(
							 "       ",
							 "  |   |",
							 "       ",
							 "  |   |",
							 "       "
				  );
		final String result = ledDisplay.convert(11);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertTwoDigitNumber() {
		LEDDisplay ledDisplay = makeLEDDisplay();
		String expectedDisplay =
				  makeDigit(
							 "     - ",
							 "  |   |",
							 "     - ",
							 "  | |  ",
							 "     - "
				  );
		final String result = ledDisplay.convert(12);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertThreeDigitNumber() {
		LEDDisplay ledDisplay = makeLEDDisplay();
		String expectedDisplay =
				  makeDigit(
							 " -       - ",
							 "  | | | |  ",
							 " -   -   - ",
							 "  |   |   |",
							 " -       - "
				  );
		final String result = ledDisplay.convert(345);
		Assert.assertEquals(expectedDisplay, result);
	}

	@Test
	public void shouldConvertFiveDigitNumber() {
		LEDDisplay ledDisplay = makeLEDDisplay();
		String expectedDisplay =
				  makeDigit(
					" -   -   -   -   - ",
					"|     | | | | | | |",
					" -       -   -     ",
				    "| |   | | |   | | |",
					" -       -   -   - ");
		final String result = ledDisplay.convert(67890);
		Assert.assertEquals(expectedDisplay, result);
	}

	private LEDDisplay makeLEDDisplay() {
		return new LEDDisplay();
	}

	private String makeDigit(String... lines) {
		return StringUtils.join(lines, "\n");
	}

}
