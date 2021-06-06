Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF2F39D2A7
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Jun 2021 03:37:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lq4Ck-0004tn-HK; Mon, 07 Jun 2021 01:37:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <changbin.du@gmail.com>) id 1lq4Ci-0004tb-Hd
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:37:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vp1Wp7b6hj5hLqATqLU1PoeUzeXuB+6KhE9dxOGwDjU=; b=LNXgVRn4aEVkKOTsMZ212p94Ru
 k9GlhOpnzuz5/Jhc6oJlfvM0Du4jH0lc0gYFVVjRHZRl+Nk8TMzl0P5z5VZ3mbyjNk6AZWLtLYc6p
 NfLNhvKE1aZip52nB76R+5xRp1Z4EGYaQiI5sOmEpAmJ0PGVL99T0vY4qYJMnzZwJ8xQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vp1Wp7b6hj5hLqATqLU1PoeUzeXuB+6KhE9dxOGwDjU=; b=d
 oZPsA9/ol+h9ZqfmQI2uyGyiCQi6wntKVrT0gVfXUtmqZkl19bW7hTc+ZBniysdyp9KN2wsBIrYhY
 5FCgETBilymk37ebRCy5xw2d7SlktRTd7ZtWtwl9Zp5eAegP7qeCjxZ2pSOCStZOg56pRvY07dA00
 3PZxft/dUGc7513I=;
Received: from mail-vs1-f43.google.com ([209.85.217.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lq4Ch-00BfRv-Q4
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:37:25 +0000
Received: by mail-vs1-f43.google.com with SMTP id b1so6341191vsh.7
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 06 Jun 2021 18:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vp1Wp7b6hj5hLqATqLU1PoeUzeXuB+6KhE9dxOGwDjU=;
 b=DdFZS8E9uQRmYi/93NmeUBqMINQezlZh2Ugm8Vf7M41y2UicS3RdJRPvLMcETyDJxq
 IGIQZX5JFKzMeWv6bn3XodnixWx0fZ4pKvG/fry1D3HBKgEZV+J3ZjubGLkyqOC6yHQM
 lhRfHuhlfjWc5FtQEa3kTV0wYaRXmjsGJebIEs5JBp8W9jv3DQXDmTVtDLCG03qBN9Td
 swUYxIL7cxFiDRvfAw9mh8T0D7YqxCMTNHqnXkkfQ73+udNQZwkF681pTeRhVzdUMmJU
 yyCYwCkeKIFP4K5j2UkI1WZDRT8YhhqctICBOUs94EFC2JC31CoFPTTT6hoAstXVm64j
 Cx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vp1Wp7b6hj5hLqATqLU1PoeUzeXuB+6KhE9dxOGwDjU=;
 b=C4FVV9OneT3+c/j/eqyPrqx7JoN3J2E/esMhcrTXgFkR6BgwoPdAVeoUW6GM1Pj+bD
 7CL6oDnYEtcbT0pVm6uA1++xQqtyZ6mAcI7pi0ule26wnG9KkBscUV/Qn17S7WO/OCzD
 5Xn4e+abkGasb8sBfuS0S2k6X1CB6S/SMHpvPEggjiqaMRF1QOd6ZfR21jOWy/+TOT2H
 auFig74VWKHrewkrR2uz/WUT46HNUuHH6GxDPT2cbuKBUEwHEGxX8kcM6rIdSjNMjOeS
 HSkDCayIvnvrrRb6CX/C7l/JRRXLtlbfiqz5TKGn72kMnuziOSN/0ZmABUesoJGwPJvK
 VBog==
X-Gm-Message-State: AOAM531U4ycjAdf4+oLxJlRLp7hAa1+e8iNw6tJUswKeSIlvjksqL4WA
 Qn3+mw90Ny0j3iN2JlwA0vNUnclXpxEENw==
X-Google-Smtp-Source: ABdhPJwDpmnszLHCk9lao0DsKXYQQGdoI16gZonWUVAPOfpoWxLTmbKwT01TNSnRl1ksb0jaF3FXng==
X-Received: by 2002:a17:902:7c94:b029:fc:5e8b:e645 with SMTP id
 y20-20020a1709027c94b02900fc5e8be645mr15191312pll.18.1623020980815; 
 Sun, 06 Jun 2021 16:09:40 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id f15sm6775672pgg.23.2021.06.06.16.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Jun 2021 16:09:40 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon,  7 Jun 2021 07:09:19 +0800
Message-Id: <20210606230922.77268-1-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lq4Ch-00BfRv-Q4
Subject: [V9fs-developer] [PATCH v3 0/3] 9p: add support for root file
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

v3:
 o rebase.

v2:
  o use pr_err instead of printk.
  o ROOT_DEV is only set after checking.
  o cleanup DEFAULT_MNT_OPTS.
  o do not retry mount for fd and virtio transport.

Changbin Du (3):
  9p: add support for root file systems
  9p: doc: move to a new dedicated folder
  9p: doc: add v9fsroot description

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
 init/do_mounts.c                            | 55 ++++++++++++++++++
 10 files changed, 199 insertions(+), 2 deletions(-)
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
