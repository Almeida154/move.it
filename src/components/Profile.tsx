import Image from 'next/image';

import styles from 'styles/components/Profile.module.css';

export function Profile() {
  return (
    <div className={styles.container}>
      <Image
        className={styles.picture}
        src="https://github.com/Almeida154.png"
        alt="Your profile pic"
        width={1000}
        height={1000}
      />

      <div>
        <strong>David Almeida</strong>
        <p>
          <Image src="/icons/level.svg" width={14} height={16} alt="Level" />
          Level 1
        </p>
      </div>
    </div>
  );
}
