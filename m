Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1032D49D8C2
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:02:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCv2u-0002wM-Jk; Thu, 27 Jan 2022 03:01:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nCv2t-0002wG-GH
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0MOv1N+u9W1JucYsa0lP9ArZpGQZbcUBxeLD0/QutmM=; b=gEpjFpW2kIMmpR3WNA8U2uA1vp
 qxqDHINsIsBs35YFfP+L8ZW1+cmTL1Q2iVWyXVEnMfTrZhqKUcZVfc9cHgV8sqNU6uwQrxEHoKdkG
 ZUQdEUyDeZgNowvvOO5+V1t7aUaX+WVEtiLl3tak9bGO2XY1tLgOd1PBcEMDs+6oSZO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0MOv1N+u9W1JucYsa0lP9ArZpGQZbcUBxeLD0/QutmM=; b=b
 vxrNjxnsaIQPwBB2KiScZeQO5URmkGymwuoBr2PHZFSpBMow6hCNcywShaP2kKS/JdgmkjCjgHnIn
 +rDYnFsHy092GgLyAmUuZ/3zgS1wlhh9xplq1CMRYZxjN8XFvQIWL9sPVFAVq1ald+uxPyWam4MDX
 s04d36FlYsMEZF6I=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCv2r-00008b-Ni
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:01:58 +0000
Received: by mail-oi1-f177.google.com with SMTP id s127so3453748oig.2
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Jan 2022 19:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=0MOv1N+u9W1JucYsa0lP9ArZpGQZbcUBxeLD0/QutmM=;
 b=niRFSdqBmY7HoAq3gAgAMl4FikaRi0diCkOZ1x1eg8t+Rjx5shhtSz50zLu1Bnv2qv
 U214sqkFb8yCiUmS0UuMC4hkDjDo91B5SXIcpyMQ+aCuzANSN9CcJFJl5EV1/vSJXrXH
 Wer+2wZbg6rpCI1NEjplx6gN4GeaCMuAnoyaMETH1yVj1sV6lHzlEDzg/x9ze8vfhE5u
 1/dljc8EQBmegGycto2rXeJ7xHSCFOseGnUYna2Yk4SmG/TwsU0VXFUT+cTHvh7yb8jl
 5+lsBmZ0AsxPL9geFTOOfeeUlNxSmsc4JVefS3/ZyrsdW9k7dRFM+uShbPMlcQYc/6OP
 yjEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0MOv1N+u9W1JucYsa0lP9ArZpGQZbcUBxeLD0/QutmM=;
 b=Ilx7G6XZOKFpQ6VxMJwAxD9prsXZi6Vvm/+YQF+I3Il/nykN47OmOoic26x47/P9GR
 ve2ZShGUjGooJf8LpfF+q2mvsvE4Gogi5VuHPxOUb875rseABtKgl6ZGtN7FZJvrrqha
 sV6QQifCk5kVKd1GdbnbMr+Q+80MAOmy9hg4pK3R3XpE2f2WICTEzFaWjJGEQAtvRrna
 gDKiYA/+tygtPA32lq//qk9kQaFPc4MD847XF3N3T0p0c6FnqLP6hBRJ982kPEMlgru4
 m1z8zlvtuppJHOBcefAs92k9LQXvvXtgXgMEtcr2M1QgPS7T/8igSd3UnzfffCttElOU
 dhLA==
X-Gm-Message-State: AOAM532KNgZX+Krl+P6nFuUKyLkiA9Gmxs+eEn7G6RQO3Vn28GdAg1pZ
 fbS3bXgODNVjdW8kxMAM86awt0IKF0o3PxCDvGHsCx/eHwocFw==
X-Google-Smtp-Source: ABdhPJxcNMMgPWxW1E3LRRfPgyYwlxJ5sAO02aj2vYnqFZkHXHOSF/U5xx93z/NhMpQbuQzwHr0w1/CtR5WyBLezxh4=
X-Received: by 2002:aca:5d56:: with SMTP id r83mr1099920oib.283.1643252508358; 
 Wed, 26 Jan 2022 19:01:48 -0800 (PST)
MIME-Version: 1.0
From: ron minnich <rminnich@gmail.com>
Date: Wed, 26 Jan 2022 19:01:37 -0800
Message-ID: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, 
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c (HEAD,
 refs/bisect/new)
 Author: Greg Kurz Date: Wed Sep 23 22:11:45 2020 +0800 Greetings, I'm the
 original author and one of the former maintainers of 9pfs. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
X-Headers-End: 1nCv2r-00008b-Ni
Subject: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c (HEAD, refs/bisect/new)
Author: Greg Kurz <groug@kaod.org>
Date:   Wed Sep 23 22:11:45 2020 +0800

Greetings, I'm the original author and one of the former maintainers of 9pfs.

I've discovered that all kernels past the commit referenced above
break the following simple program:
int fd3 = open(argv[1], O_RDONLY , 0);
if (fd3 < 0) perror("non cloexec open ");
int fd4 = open(argv[1], O_RDONLY , 0);
if (fd4 < 0) perror("2nd non cloexec open ");
int fd = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
if (fd < 0) perror("first open");
int fd2 = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
if (fd2 < 0) perror("second open");
printf("%d %d %d %d\n", fd3, fd4, fd, fd2);

The output:
2nd non cloexec open : Device or resource busy
first open: Device or resource busy
second open: Device or resource busy
3 -1 -1 -1

As a result, programs can not open a file that's already open. This breaks an
absolutely incredible number of things, as you might expect.

This causes real trouble for us at Google, as we are using the cpu
command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.

Any thoughts on what we might be able to do to get things back?

If you need more tracing, 9p traces, whatever, just let me know.

Many thanks!

kernel protocol trace available at https://pastebin.com/w9Ke0mRm, the
thing to look for is the open of x.c, I can get more info as needed.

ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
