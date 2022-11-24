Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB786379CD
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Nov 2022 14:20:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oyC9m-0004gC-F1;
	Thu, 24 Nov 2022 13:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1oyC9l-0004g0-97
 for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 13:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SWkN2cRi13sxU3o59s3qG/QDoeZoq61rFYW1PBVwJ8w=; b=mRiBXIyZ2dEN7bKQbA46N78Nv4
 4Jx6glhNci3XCjmh0kiYzOEq/Nze/RFKOMEf8zDz7LMJ6v1hevSJEVpN6WQAVzrwOrCO3iCTPkge8
 hO+pEPGoIntT3Q0oLFX8WzDTJuT8iTLSP2vdKQEg67R8122wKlN3UzFo0LPvZNaCGq8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SWkN2cRi13sxU3o59s3qG/QDoeZoq61rFYW1PBVwJ8w=; b=lJbvljcdUUWC2OcPNn/J9RA4SN
 82UahWq3DNszkuWWQ2HmCln4tv3wOg2DkP3e9gJsGXWFjeORREYNeoqaiOf9Nlea4KvOyt2rtW6J4
 RzUamVowTUiayDUWjrU/G3jscQLddhfDUqAwkIpBdeGla1vnFFwxMD0DN7QJM1P5GN8I=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oyC9g-004Z0w-RV for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 13:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=SWkN2cRi13sxU3o59s3qG/QDoeZoq61rFYW1PBVwJ8w=; b=TvAs7spYQ0q9IWL0m7fFZISB5s
 zqa0bx4S3fLnYvvqjAE4TSnkb9pHHoRtrCJhmaCA9B67B2mcryRHmQCo0Czo7rWACHF/Qbj099/a7
 vJzST2g0ZpM+T+b6qfj/Ya6k6jufquPl45j9q0fvuPyKRNepWC92K9a90SoIoEgAIrtEFQmv1H4V0
 tbBuS89Pug8x5zbOZVqCMUTqGqXFK6+APh73kS3HA9/KAsBUOFR6HCnM8DVWTXPJfZoiGAT7n3WrJ
 ANWaueoPXg5/+5XJ6RqeTH+afhyY73oAx0C95/EgwIAKnH8l35/GbpI4ZYwe0wYhsNGEn6aN4Bck0
 wmVCdgryBfLppavnEaudlssP8EHPVJNxntGOa66M+cmy3AO2AhonM84e49/oe4gQZz4sy8/1bNMkF
 2hZMyiOl1Fz7SQnBI9cQkVYjnAFUvFxCA1aBtfnmk5MS/iNix8Is8a2rMrLayDRNgEJRYmca9n6Or
 lPL5uRHoIphwzgXw/pu0J5yMrZ2CILL3jEQyQO/c8/gyK5qfw3X1AWMbO95+FAxYt73ctmzybWEu6
 sZv9ECMtN0EIGJn2OZb9sihO8OUg7Qq84keAwEYXfd8MEm0ZbhVur/xbDKK+E0rikSVL3kjmrJ2Ha
 xtpg5gprK2SYW415jQpo4+duga5v38QC1ihiBSsps=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 24 Nov 2022 14:20:28 +0100
Message-ID: <2899577.0geWjkyWJQ@silver>
In-Reply-To: <CAHk-=winPSOAoRAc3vUSy9UZ-kLpjehVkEsncbiyqZ4cZfV0xg@mail.gmail.com>
References: <Y32sfX54JJbldBIt@codewreck.org>
 <CAHk-=winPSOAoRAc3vUSy9UZ-kLpjehVkEsncbiyqZ4cZfV0xg@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wednesday, November 23, 2022 8:08:48 PM CET Linus Torvalds
 wrote: > On Tue, Nov 22,
 2022 at 9:16 PM Dominique Martinet > <asmadeus@codewreck.org>
 wrote: > > > > net/9p/trans_fd.c | 24 +++++++++++++ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oyC9g-004Z0w-RV
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 6.1-rc7
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wednesday, November 23, 2022 8:08:48 PM CET Linus Torvalds wrote:
> On Tue, Nov 22, 2022 at 9:16 PM Dominique Martinet
> <asmadeus@codewreck.org> wrote:
> >
> >  net/9p/trans_fd.c  | 24 +++++++++++++-----------
> >  net/9p/trans_xen.c |  9 +++++++++
> >  2 files changed, 22 insertions(+), 11 deletions(-)
> >  9 files changed, 254 insertions(+), 28 deletions(-)
> 
> Strange bogus second line of statistics.
> 
> But the first line looks right, and I've pulled it. I'm assuming this
> is some odd cut-and-paste error on your part where you had some stale
> data from before.

First line and above is correct, and merged patches look fine as well.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
