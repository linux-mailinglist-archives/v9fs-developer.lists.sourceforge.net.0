Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A3828EEFE
	for <lists+v9fs-developer@lfdr.de>; Thu, 15 Oct 2020 11:03:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kSzAF-0003mG-DJ; Thu, 15 Oct 2020 09:03:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+d12e96c8672b4e58918a+6262+infradead.org+hch@casper.srs.infradead.org>)
 id 1kSzAE-0003m9-KK
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 09:03:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i5I/+cL4/3BlrD1oU/6ksmOSk/qvKfKsTAdChNORLE8=; b=jhKOM0Zf9aIZmsWybMZVolZJq9
 KOIaNcIRJUt2OknbJBRl0ctwtmmnXjTFyrc6VAVm252oFR9113legfvd8z2kK325llX6xdzYqra+/
 Fo9jT5w0qMYJDB89+AGvcZLuiQdc8Bz8xUU2k7lJSIpN8lFg5p4gC9kTAvGcNR5WwB9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i5I/+cL4/3BlrD1oU/6ksmOSk/qvKfKsTAdChNORLE8=; b=SCW03dPQh5NeJHDSyBMRIWs1wb
 mZIFIkxlEUQTeR6y+PiIAtdRyNsLehVpWNhnY2OiFwb7TtpU8dyWw0WKfbsMZtCeLe8Pf7nHm9hJ/
 yRuaq9sSQEsYL2UsRbTT0Tump1GbpEqBKfLWYeuRRnMow5TsvqmDWv+YFhdWv/O6WaLg=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSzA5-00BH4M-Jl
 for v9fs-developer@lists.sourceforge.net; Thu, 15 Oct 2020 09:03:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=i5I/+cL4/3BlrD1oU/6ksmOSk/qvKfKsTAdChNORLE8=; b=TssziCuKhu+1FMQTF7TdAznCvs
 3wf31mB6br60aOA10fFjnjz4zucQawjaIVi98uQAWJL9cvAPmO0RKUN0GouLWSsCKTdUPVBNDFsoV
 Mrb0xKHkx5KR4TiHECNhtTiMIpRWqOvyG37o7YZ46NC49Q0H4l2nLmxuQ1H+5sXI87bLV4g7q0iCI
 aoXAla6IHi7PZ0gXRmx/1Oq0q50C+8whZA3Xn7UtIX1RuFhVZUcoBR/xTryh3MZKY2GykxNywq8Lk
 mgsPo2UmbVGDUTfrZAykSKaR2GERVG6hhr3SXMVN11kl7JWWBl894lOhZnBVM28hUwQeEtWELGDCv
 af1DTZLQ==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kSz9m-0003Pp-UN; Thu, 15 Oct 2020 09:02:42 +0000
Date: Thu, 15 Oct 2020 10:02:42 +0100
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201015090242.GA12879@infradead.org>
References: <20201009143104.22673-1-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009143104.22673-1-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kSzA5-00BH4M-Jl
Subject: Re: [V9fs-developer] [PATCH v2 00/16] Allow readpage to return a
 locked page
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
Cc: linux-cifs@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 ecryptfs@vger.kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Oct 09, 2020 at 03:30:48PM +0100, Matthew Wilcox (Oracle) wrote:
> Ideally all filesystems would return from ->readpage with the page
> Uptodate and Locked, but it's a bit painful to convert all the
> asynchronous readpage implementations to synchronous.  The first 14
> filesystems converted are already synchronous.  The last two patches
> convert iomap to synchronous readpage.

Is it really that bad?  It seems like a lot of the remainig file systems
use the generic mpage/buffer/nobh helpers.

But I guess this series is a good first step.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
