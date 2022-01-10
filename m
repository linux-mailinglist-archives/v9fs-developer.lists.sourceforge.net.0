Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5C8489BC9
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 16:06:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6wFZ-0002Iv-1F; Mon, 10 Jan 2022 15:06:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ng@0x80.stream>) id 1n6wFW-0002IL-AU
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 15:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3yWORMpQqTTApEwg3tY35uvvmboSIfiOAm8EiVxKZG8=; b=k/DHeAwXVRk1OOXu2no3fcd1n
 40pcOxeJVCd4uo0luHkibntMVTijHrRAIydN6ei/pH1gumIk+tbt/KbBPxxOAmewWHXVpXtpSzBwE
 WjgLxUD5rXKO0tRdhVkT7glw/t9QkRvKiXYF2yhXKh4j7Uj2l1xsMLBoGjPOXfbUf4VPk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:To:From:Date:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3yWORMpQqTTApEwg3tY35uvvmboSIfiOAm8EiVxKZG8=; b=J
 P/DGNVbwjgZG4fTRrlGZ7EPMayA/A1TZ4wzm9cIzup0MnsebzUD9y/rUG2XRhFo6sY/0msthnzZp6
 lI9DovXBaKLMXBjdSRPFd07MnEdQZ4vnUnlK6O0Z8GjMn45PytK/ZQRszTDSB7zEFtAHpzIPU64GW
 UAEVS3kNpHh0WyD0=;
Received: from eva.beecloudy.net ([145.239.136.208] helo=penelope.mx)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6wFR-0007Uq-31
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 15:06:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 2567820C14D
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Jan 2022 15:41:19 +0100 (CET)
Received: from penelope.mx ([127.0.0.1])
 by localhost (penelope.mx [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FO3UAHFhTS9u for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Jan 2022 15:41:18 +0100 (CET)
Received: from penelope.mx (localhost [127.0.0.1])
 by penelope.mx (Postfix) with ESMTP id 2FF2920C1AE
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Jan 2022 15:41:18 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 10 Jan 2022 14:41:18 +0000
From: ng@0x80.stream
To: v9fs-developer@lists.sourceforge.net
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <c4815842e8eedab0325fc62ae9e58fde@0x80.stream>
X-Sender: ng@0x80.stream
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, this is a bug report; on Linux 5.12 and 5.14 it seems
 v9fs uses a fid that's been used for I/O to walk someplace else, which is
 not allowed according to the manual. From the walk(9p) man page: The fid must
 be valid in the current session and must not have been opened for I/O by
 an open or create message. If 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.6 FROM_SUSPICIOUS_NTLD_FP From abused NTLD
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
X-Headers-End: 1n6wFR-0007Uq-31
Subject: [V9fs-developer] bad use of fid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi, this is a bug report; on Linux 5.12 and 5.14 it seems v9fs uses a 
fid that's been used for I/O to walk someplace else, which is not 
allowed according to the manual.

 From the walk(9p) man page:

           The fid must be valid in the current session and must not
           have been opened for I/O by an open or create message.  If

 From the 9P dialog in a fs of mine:

2022/01/10 14:24:53 >>> @ Topen tag 0 fid 2 mode 0
2022/01/10 14:24:53 <<< @ Ropen tag 0 qid (16c8eed61aaf0d36 0 'd') 
iounit 0
2022/01/10 14:24:53 >>> @ Tstat tag 0 fid 2
2022/01/10 14:24:53 <<< @ Rstat tag 0 st ('root' 'user' 'user' '' q 
(16c8eed61aaf0d36 0 'd') m d555 at 1641824667 mt 1641824667 l 0 t 0 d 0 
ext )
2022/01/10 14:24:53 >>> @ Tread tag 0 fid 2 offset 0 count 65512
2022/01/10 14:24:53 <<< @ Rread tag 0 count 113
2022/01/10 14:24:53 >>> @ Tread tag 0 fid 2 offset 113 count 65399
2022/01/10 14:24:53 <<< @ Rread tag 0 count 0
2022/01/10 14:24:53 >>> @ Tread tag 0 fid 2 offset 113 count 65512
2022/01/10 14:24:53 <<< @ Rread tag 0 count 0
2022/01/10 14:24:53 >>> @ Twalk tag 0 fid 2 newfid 3 0:'ctl'
2022/01/10 14:24:53 <<< @ Rerror tag 0 ename 'bad use of fid' ecode 0

Here fid 2 is used for I/O and then for Twalk.

I run on 5.10.y on most of my machines but I have to run 5.12 or 5.14 on 
some new hardware, so I noticed the problem.
The snippets above are for 5.14, I've to confirm if 5.12 has the same 
problem, but higher level error is the same,

$ ls
...
ls: cannot access 'templates': Bad file descriptor
...



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
