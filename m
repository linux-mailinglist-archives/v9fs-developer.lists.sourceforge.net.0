Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9518A4490
	for <lists+v9fs-developer@lfdr.de>; Sun, 14 Apr 2024 20:04:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rw4D0-0006lB-3E;
	Sun, 14 Apr 2024 18:04:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rminnich@gmail.com>) id 1rw4Cy-0006l3-RW
 for v9fs-developer@lists.sourceforge.net;
 Sun, 14 Apr 2024 18:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rvIPSyHqg7Uk66tJ7aBpYim8YH4BAZYWLdbottdRLkM=; b=WtLBfiHFL8RMKYXD62ZyxDgDja
 Zf7zw76jInzfhuARcYCxnaZZSAApSkB8WmpLL7VJYKM2jQiRZlDHsmzx/fXMay8hmvpnd6FnWjHNA
 9NRROUwXLt0TOscMmefymqUoNAv4O+w988ssmldVdk9j1RKxqSeZAFhrG0mKMJUqQIFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rvIPSyHqg7Uk66tJ7aBpYim8YH4BAZYWLdbottdRLkM=; b=T
 B9+goVNeh7csgURPrI0nIh2pFx8C0H/35v2Ssnxb0/hIFrdDvUKfYVe0knCsgD6ZHzcAyI1tT30Y1
 sWfvqGnntqbpaiC/4pA4yRFK0SWi3Yt7IHwlahb1xNH6ANA3khtz06GEOn4P/elyoHt4EaFeYwxne
 jPbJU85EufV8/vxY=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rw4Cy-0000jo-94 for v9fs-developer@lists.sourceforge.net;
 Sun, 14 Apr 2024 18:04:05 +0000
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-516d2b9cd69so2856210e87.2
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 14 Apr 2024 11:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713117837; x=1713722637; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rvIPSyHqg7Uk66tJ7aBpYim8YH4BAZYWLdbottdRLkM=;
 b=F/hl1Cnua7p/85+7RoIYvCwNPlxAYGEVn9EYDj+emPqTtuDBXgeV2Tz8BlhbwBKW+J
 KqZEPGHc8eqaTPIRxe9l39oYVoyM9u4rClu2imJT2GWMshCsOEPFQFmg2iVSiecpta9Z
 kpE+2COE0646BxyTaLotdJJXlP40wOk+YCsxIXnPUg39+6jd22D+JppW4yYVf1fkU3Xk
 1cV8mF6kj/k7g9vx06Z02OLIM/o61SBbePPpFTX1oqVzCiW2dwEsukJcF+n3wsgKPcCZ
 TcJyACtWRbHgkXHnwkHI8gHjwYMxhWBXxJvsnBxijpDiBHBG78ePSrdAdQMSOXyvuTkk
 yT0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713117837; x=1713722637;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rvIPSyHqg7Uk66tJ7aBpYim8YH4BAZYWLdbottdRLkM=;
 b=rdMO80IZgrZWFvf+JTedNN8a2yoN5rgp/fFiPMwftci9OAQQ2F0bH0nHgEHcyNnMY9
 XjW5TCEObtpf13WZwCeISUhOhBaVn8T8XY++UST1lZGKFi5bkWYSNt4LyqK7/wDaAAPX
 8/vZV93kUskt65I9SIZw+AXu1asRvZzzg3YtjNuX/zlm+lgC8aM++M2hyD5YJcoGJCpV
 Jp1M2Wn/LHqqrNCjKkNzgqKDiSo4eYDsFWTUEtY/Efp9d5hftY2K2uN/p58fJt3UMsPM
 ydxJ38J5WXq2ZrZe6+TSFgDZ9LFyXuI6JYwxZwvJLWMduxRy6WLcAKBXgpsq//hFXD+p
 XoKw==
X-Gm-Message-State: AOJu0YzGqKegzexesOc2OJilAnE72mz8AWB+Vmwj/9JZR7hg+ixLWBPA
 yrDVm98GgcqJmkz2tj2nfoJ9YHPt+lEAkv7P+lIKjbZAPs3HoDQdymLuBJLANjV8RS7pgxQpytU
 BrZkh69frvGkSCQb7hNrfWFuKqDtZxg==
X-Google-Smtp-Source: AGHT+IHSD/Bleyn2hT4o2UYkhPNV+a0FAC5MKJAhyvQDhOeW1Dp7IVzG9y5EnOdTfhQs/q4YUXo2mbRavjh5r5vb34k=
X-Received: by 2002:a05:6512:3a91:b0:518:c6f0:5f22 with SMTP id
 q17-20020a0565123a9100b00518c6f05f22mr1954945lfu.29.1713117836949; Sun, 14
 Apr 2024 11:03:56 -0700 (PDT)
MIME-Version: 1.0
From: ron minnich <rminnich@gmail.com>
Date: Sun, 14 Apr 2024 11:03:44 -0700
Message-ID: <CAP6exYLRpE+QyQkZN2_qzugA46ifAKyJSP_QUqa=uYKHRHw1TA@mail.gmail.com>
To: V9FS Developers <v9fs-developer@lists.sourceforge.net>, edou@rdklein.fr
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  we would like to make 9p safe, in the sense that FUSE is safe,
 for user mounts. This would add FS_USERNS_MOUNT to the .fs_flags in
 v9fs_fs_type.
 This would be very helpful for those who wish to mount 9p without a FUSE
 middleman. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
X-Headers-End: 1rw4Cy-0000jo-94
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] marking 9p as safe for user mounts, wdyt?
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

we would like to make 9p safe, in the sense that FUSE is safe, for user
mounts.

This would add FS_USERNS_MOUNT to the .fs_flags in v9fs_fs_type.

This would be very helpful for those who wish to mount 9p without a FUSE
middleman.

Any thoughts on whether this can happen?

thanks again.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
