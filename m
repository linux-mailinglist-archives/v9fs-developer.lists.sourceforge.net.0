Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49983376D8F
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 May 2021 01:59:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lfANK-0001F8-Bq; Fri, 07 May 2021 23:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <changbin.du@gmail.com>) id 1lfANI-0001F0-RK
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 23:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yVnKEv/GTFWoZTHVwSWln+PoeZZjAnooQp33wJOZnTc=; b=TjT6tV5zaPQHVPlfkDZTCTko64
 J3+5sylJd4xiPwXXqBrp9ZkNjHZAN/iaSYe0vY5wvZzEeFx/Ux6xpgAhYKhT64ZGsRjdMGii7hGbn
 mNk1VQf1eAgvc8BW/Zxs3QHkwg/SIHlp6EVOvVFEqDrdu4HKnNgkLkvCoDB23NAlK3eQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yVnKEv/GTFWoZTHVwSWln+PoeZZjAnooQp33wJOZnTc=; b=U
 T3MeGlb6jSM2oVnn1VNMiL6yF2vnXP0Odn51x4YzF8Th+5Ou1nEYb+jJIdZBZmGaTfuvblogCPh7v
 EI6vzxjVDPsgxNJN+Raz6fbg3DFICUmjudJQzhoGAlxFaEP2VYGhRU4M1tiRNJo+sHZ/dw4SSat18
 FoGEyNMtSVOxE1qM=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lfANE-00BYHr-W7
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 23:59:17 +0000
Received: by mail-pj1-f51.google.com with SMTP id g24so6105427pji.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 May 2021 16:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yVnKEv/GTFWoZTHVwSWln+PoeZZjAnooQp33wJOZnTc=;
 b=dxZu9dNW5j8GiQu00tG20My3QSXGPqb5ryb0Pl2eePoY/70VvqTk5QVrBPhEWjvMOZ
 CK3cX0QmNxFHR7vBzY57pMVfdK+HoUWARpPJxfpZSBrnIjGstBqOspZKfeIDkw/TBeLc
 uIFMCC1LcGdBK99XeVApNwDXQ/+eLC75oT8sU0RlMhhwwFitaOcgizGsw9E2Pe7T6QVl
 HZG0mG7UybOwkcEC6oIvK0cBow+kJHOi2tD0aDHk0aLFOT/IvBCzkIIIi3hf6OFTCY31
 tYSHxjTCehq5P538St6aVCVgKjGgsTIeZc3bWiGOBex2qL61VgfPtaXAYNuQwLEsjSg6
 fRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yVnKEv/GTFWoZTHVwSWln+PoeZZjAnooQp33wJOZnTc=;
 b=oUTiBKz+ssqY5dKi+t1/Vvjm937lC+WBk71CtRjBbJ4O5oX1H4LkgSx/o8Gg9gHYXA
 tjq35aHLMq2nvFzWTQ41SXJvXrQOpYAAVzGESAIDo7S6sMGgl5PyQdGjY6CM9jZ3udf1
 +w0MbhYFGSjVNAmcH/R+mkHyco1I2+N0BIO9z45jmKwiKw8Y/Fq7oJr07e+10X3uSNLW
 b3Las2NTtP91B4Kyew30OTnHfHMze6/vRBUnZk7RO2g5FAsmN53908xAWvAe3EUUi9SL
 7bSon0/ZLJC8a/gUQqK0ilc3jM5aCti3fycLJWDBhO5ohxPtwzzKPkJS1fg6YyyLsLqX
 hh2w==
X-Gm-Message-State: AOAM532D3EVfWbQtLkPVHqo8sjGCPePd/zMOmpinBQmF870Fh9ApPktt
 rvvP/QPUodMB1CHEvi90/do=
X-Google-Smtp-Source: ABdhPJyarzGBJ1FknJAWoWlpxYkHDLxfaDi4+aPL1Ns/IxPNDAdoaOQZFwRgkc6/gGdZpvXI2JOthQ==
X-Received: by 2002:a17:90a:20b:: with SMTP id
 c11mr12868350pjc.44.1620431947379; 
 Fri, 07 May 2021 16:59:07 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id g18sm5700449pfb.178.2021.05.07.16.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 16:59:06 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Sat,  8 May 2021 07:58:39 +0800
Message-Id: <20210507235842.16796-1-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfANE-00BYHr-W7
Subject: [V9fs-developer] [PATCH v2 0/3] 9p: add support for root file
 systems
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>, v9fs-developer@lists.sourceforge.net,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Just like cifs and nfs, this short series enables rootfs support for 9p.
Bellow is an example which mounts v9fs with tag 'r' as rootfs in qemu
guest via virtio transport.

  $ qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
        -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
        -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
        -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"

v2:
  o use pr_err instead of printk.
  o ROOT_DEV is only set after checking.
  o cleanup DEFAULT_MNT_OPTS.
  o do not retry mount for fd and virtio transport.

Changbin Du (3):
  9p: add support for root file systems
  9p: doc: move to a new dedicated folder
  9p: doc: add v9fsroot description

 Documentation/filesystems/index.rst         |  2 +-
 Documentation/filesystems/{ => v9fs}/9p.rst |  0
 Documentation/filesystems/v9fs/index.rst    | 12 ++++
 Documentation/filesystems/v9fs/v9fsroot.rst | 52 +++++++++++++++++
 MAINTAINERS                                 |  8 ++-
 fs/9p/Kconfig                               |  6 ++
 fs/9p/Makefile                              |  1 +
 fs/9p/v9fsroot.c                            | 64 +++++++++++++++++++++
 include/linux/root_dev.h                    |  1 +
 init/do_mounts.c                            | 54 +++++++++++++++++
 10 files changed, 198 insertions(+), 2 deletions(-)
 rename Documentation/filesystems/{ => v9fs}/9p.rst (100%)
 create mode 100644 Documentation/filesystems/v9fs/index.rst
 create mode 100644 Documentation/filesystems/v9fs/v9fsroot.rst
 create mode 100644 fs/9p/v9fsroot.c

-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
