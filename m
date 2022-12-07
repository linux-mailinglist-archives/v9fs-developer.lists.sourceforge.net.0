Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BA7645C2F
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Dec 2022 15:16:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p2vDb-0000Hb-HZ;
	Wed, 07 Dec 2022 14:16:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1p2vDT-0000HL-I7;
 Wed, 07 Dec 2022 14:16:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=av0aEusu+vsj86BELI+AtxSwOgfCeiVTcIK8VTAOIO4=; b=bg4eTQuJ7GEMTpWpJ40LqGcl3z
 K8lHCzoEVnfr3eByUk4JWLOlZpqNX7AWYhc8mk4ROgFevgUck93YLJ6NB1KyXIUC1+ptdv2PFZtP3
 0j3Z0gcQvwgix9GIqjKdfsouiZaivsZlxwu7kbADdRVQ3dPc4QiUj6AW1GdwkUjNwEog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=av0aEusu+vsj86BELI+AtxSwOgfCeiVTcIK8VTAOIO4=; b=M
 s/98Avu79+njDjP5kSVc/F8P3VFQ8/PjM8WcoArpLYeP/UFeJBgJO3oxGppXiaieJvLwPNhOmtTVM
 MXekb9LSAVRluDZ1SghNH8dqaYhjJuWhEq1FMJ4qqpcAz21uOyxD3m8FThjGJi7fNffe8iOn8+D+6
 IogOtqvBvPYPd7zk=;
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p2vDO-0005no-U8; Wed, 07 Dec 2022 14:16:07 +0000
Received: by mail-wr1-f41.google.com with SMTP id m14so28270899wrh.7;
 Wed, 07 Dec 2022 06:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=av0aEusu+vsj86BELI+AtxSwOgfCeiVTcIK8VTAOIO4=;
 b=qERXhRCNu6Zo0a/POKARUXdha7zN6rAJr9f9qrdkQ5obu4XUwnwmDk3+ww+LwHgUVo
 jquEYQ0NFzdZTrSUmzseZtqJgS/vdBKFV6s8uCB+rgEV4dydWhwBPnnJUIYSSi3Z78/p
 ifBA3yrlF12oVXe1Mka/8tiPdAjoTX3mTEMrioq2jGaF1p8M/GUYW3S8JaZeBw0O5N1K
 XWXcdR3SHVFFTb+/E2LRqT+mYZFrnWIWtt1iXY2zEMMBmDGrddsEEsCtheexAVywT67t
 ffNOhfwwYp2EpAEDIr9abvmYd8nw+WZ6IrAJquHWjVnZkCRTLT50wX642B6y40IHjVFl
 8YAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=av0aEusu+vsj86BELI+AtxSwOgfCeiVTcIK8VTAOIO4=;
 b=Kimyb26Rul3bm4wu0fGmOxWFnAMV35blel/Qr+mFon3L+ab4bVuzQ5br++tr0uB39S
 3iXH/1ovuEkhsk7mR3IPs8xOaJ5XupKgCLjdKGTgyOrUf/CaR6G3qIxcvtxcAJFigb7H
 4ZmirTJt3fHtKe3/meEmRX5pg80+YD+dxmswRgrG3k43Dx3GwdcKBpIyeofclZevIAR/
 QhKOk2r+EUfXRKMstlYAA9wAOcFpmd0x0GG/GUM8X9b+0oBmlMCDpPufd4HPtsl8sQ82
 oPgsvASML8xoFSGUN+olq8sNCc2JUusKl2uKPDAf3p2QAA4K0/IdLCj8SRc5Kpiri/0s
 fzvg==
X-Gm-Message-State: ANoB5pnsGxVn755ntpgPFFNmoEvT0CzYxdyF30TZQ4C0KutYJqpDdaAp
 WWcbywFAhOeihxAQYDaOAkVDcWeW8PtkYQGVFwYwOWrxwMI=
X-Google-Smtp-Source: AA0mqf6SVsPQGv4YfwIlgxxGsdqza80whPY+7y9V8QrzrcxZJGJbSdzMbCFja6S7YC/WrXc/juDRtb78alX/CyX/dNw=
X-Received: by 2002:adf:e303:0:b0:22e:3c66:bda1 with SMTP id
 b3-20020adfe303000000b0022e3c66bda1mr47599996wrj.139.1670422551965; Wed, 07
 Dec 2022 06:15:51 -0800 (PST)
MIME-Version: 1.0
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Wed, 7 Dec 2022 08:15:40 -0600
Message-ID: <CAFkjPTn+F0-PD76G4m2Lp1_MbS_WdvsCngzD7Aa1w7qQYdgqjg@mail.gmail.com>
To: V9FS Developers <v9fs-developer@lists.sourceforge.net>, 
 Jim Garlick <garlick.jim@gmail.com>,
 Dominique Martinet <asmadeus@codewreck.org>, 
 "v9fs-users@lists.sourceforge.net" <v9fs-users@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  TLDR; I'm mucking about in the caching code, if someone else
 is doing something there please let me know so we aren't working at odds
 or duplicating effort. As some of you know I'm mucking about in the 9p caching
 code - wil try and upstream some RFC patches shortly. Overall goal is to
 make simple forms of caching (readahead/writeback(maybe)) default on 9p [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.41 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p2vDO-0005no-U8
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 9p cache code
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

TLDR; I'm mucking about in the caching code, if someone else is doing
something there please let me know so we aren't working at odds or
duplicating effort.

As some of you know I'm mucking about in the 9p caching code - wil try and
upstream some RFC patches shortly.  Overall goal is to make simple forms of
caching (readahead/writeback(maybe)) default on 9p2000.L while leavine
cache=none default for 9p2000 and earlier.  My intent is to do some work on
directory level caching next.  For the moment, I'm primarily concerned with
in-memory caching (not fscache per se).  My draft experiments are here (but
this is not what I will try and upstream as its a mess):
https://github.com/v9fs/linux/tree/ericvh/v9fsperf

I've been crawling through the code including the new folio changes and
have done some experiments on what needs to be done to get file-level
caching working and be somewhat consistent.  I also think I know what I
need to do to get directory caching coherent (as opposed to loose) but have
not prototyped it yet.

One question I had for the community is if anyone has been using the
fscache code (code=fscache).  On inspection there are several things that
are clearly (to my eye) wrong -- several of them let in on my watch 10
years ago when we were doing the 9p work at IBM.  So, before I do any heavy
surgery here I wanted to make sure I wasn't going to be upsetting anyones'
applecart and make sure i have regression tests for desired functionality.
I was going to eventually get around to trying to fix fscache for 9p (if it
is indeed broken), but it is at the bottom of my priority list at the
moment so we'll see how much of this I get through over December (which is
roughly the time I have allocated to work on this -- a 9p vacation if you
will).

I'm going through a process of function checking the different cache levels
using various test suites and also doing performance studies (some of the
baseline of the latter can be seen in:
https://github.com/v9fs/notebook/blob/main/perf.ipynb).

     -eric

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
