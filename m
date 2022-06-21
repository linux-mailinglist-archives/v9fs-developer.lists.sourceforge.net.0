Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1F85531C3
	for <lists+v9fs-developer@lfdr.de>; Tue, 21 Jun 2022 14:14:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o3clq-0008B1-Uj; Tue, 21 Jun 2022 12:14:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o3clp-0008Aj-38
 for v9fs-developer@lists.sourceforge.net; Tue, 21 Jun 2022 12:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WnC8/sVEqcV82ARt6NQG9FTjINSGhbQW6PZRwnbLprs=; b=DhCcLryvYKwl3CRjK8y3tiVxd0
 Z6aiuw4ABxzcab8BHIcLhi2gTRGaie6t8YA3RZGm2DVFbh6CIgp6I5SvaUKEXqKEELzCoykwxT7TL
 zXgNsMV+WvDqvJAxlMSD3pgd1v2V77xCYKHG0DEr+RppTn6Vn4eNn2+1SEBbMeseStJc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WnC8/sVEqcV82ARt6NQG9FTjINSGhbQW6PZRwnbLprs=; b=KPh49cUaBF9+QxRNrKi2msDPj8
 f7c/XHO1Spm0A9fhbOxzlR1gEHAQe5QTsd+e+ovQUyYLhtKSwJRHGbFWwqJimSpiv1Yz6YHbGqNjP
 +CigPovNcSfpU1Dj7SOii1emsF1zjvg3AhHnX5HJEoUMTc8wFCOl9+JEMNf95In1hF1k=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o3clj-009JqY-Pn
 for v9fs-developer@lists.sourceforge.net; Tue, 21 Jun 2022 12:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=WnC8/sVEqcV82ARt6NQG9FTjINSGhbQW6PZRwnbLprs=; b=AAKg5CtcGYAQc9VOmfGncdP/qy
 6KjzYJBG9pPPuAL1pfNLPIvsq9t4K9dmbW045BGri0Pg98M4q4YD5Urjbxi00ARrcQQ+pMtoPGsr1
 V79EVcO1N6WvMsaAPEScCpL/a6qpOlcoBkhNuLZq11+sFCxHeZgB/emEqoCSGO9qnCkHgnHF4jO/g
 nWuBHSN91RpR76Ls6IjuajnytXDjwgOstNIFA+ZKxzpzwNotfWbYQk3VqBRuogPVPHyry3B51Lh4v
 CkNkjP+h6j/diRO+MYb6LHBMHIl/NvrufiWNDIx++xVJivhGSh64QsRA3qHpH0Klykj5d9Pk/wPHV
 xaPQ01H+09Z1834SWCS1go4rXN8Yb68Mk5B9ilJg6Lwu65bgrhCNFJDJl2eKoFDVTaz8/tPhCJzfD
 1OQXLchwjmRWMaBzFwMQR815ufEt282WjYZHJBz94QU/kTz4jgdcVUwAuLUIpYywATXqaC/6pLsXC
 dwgDAfVDgwYtTbViLcxMs2xZICitDOVDePPyqrwroF1VqiZScUZ1DJl3T/uLaix42zD65DfGiyR+L
 WIpfKcvqehqVpkzSM8r6AnmyTq7pilgFlioy12g4EImGmUrnTOHaFhZwjN1zcpWOto+4H+hFL4VjG
 lBMbs8eqfdeTKUOe7/qFLiqvRyDGKuW8NYEAHejrA=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 21 Jun 2022 14:13:51 +0200
Message-ID: <25475559.V594D4LmdM@silver>
In-Reply-To: <YrDZ3nlTFwJ4ytl8@codewreck.org>
References: <15767273.MGizftpLG7@silver> <1902408.H94Nh90b8Q@silver>
 <YrDZ3nlTFwJ4ytl8@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 20. Juni 2022 22:34:38 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Mon, Jun 20, 2022 at 02:47:24PM +0200:
 > > Some more tests this weekend; all looks fine. It appears th [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o3clj-009JqY-Pn
Subject: Re: [V9fs-developer] [PATCH v3] 9p: fix EBADF errors in cached mode
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 20. Juni 2022 22:34:38 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Mon, Jun 20, 2022 at 02:47:24PM +0200:
> > Some more tests this weekend; all looks fine. It appears that this also
> > fixed the performance degradation that I reported early in this thread.
> 
> wow, I wouldn't have expected the EBADF fix patch to have any impact on
> performance. Maybe the build just behaved differently enough to take
> more time with the errors?

Maybe. It could also be less overhead using writeback_fid vs. dedicated fid, 
i.e. no walking and fid cloning required when just using the writeback_fid 
which is already there (reduced latency).

Probably also overall reduced total amount of fids might have some (smaller) 
impact, as on QEMU 9p server side we still have a simple linked list for fids 
which is iterated on each fid lookup. A proc-like interface for statistics 
(e.g. max. amount of fids) would be useful.

But honestly, all these things still don't really explain to me such a 
difference from performance PoV in regards to this patch, as the particular 
case handled by this patch does not appear to happen often.

Anyway, my plan is to identify performance bottlenecks in general more 
analytically this year. Now that we have macOS support for 9p in QEMU, I'll 
probably use Xcode's "Instruments" tool which really has a great way to 
graphically investigate complex performance aspects in a very intuitive and 
customizable way, which goes beyond standard profiling. Then I can hunt down 
performance issues by weight.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
