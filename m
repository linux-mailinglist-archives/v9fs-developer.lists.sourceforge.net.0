Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B119B2206B5
	for <lists+v9fs-developer@lfdr.de>; Wed, 15 Jul 2020 10:04:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jvcOo-0003KD-Ty; Wed, 15 Jul 2020 08:04:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1jvcOn-0003Jm-Ge
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 08:04:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CoK6nqXXUrtD19DPC16HJx1GfEyYb3YchpeRwwp+G2U=; b=FpXlv+wgNufmwlmkQmX6mY584B
 6WV5elsWSSMgNUgLraOXw8pQTIJSbTMclLPlHUzTJVSRhqFO6jcOv/Rgb0UsTfV8drhIxMS4czZMc
 g+uxNRBf19JyEz8V2eosqFkJshfYgoIZ+d0fue1m2Cf36b87xSsAjvRVBLDVE61hpsyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CoK6nqXXUrtD19DPC16HJx1GfEyYb3YchpeRwwp+G2U=; b=bGaX7NC8SoB8QRS0eDOXpzqJpG
 8U6/MSMxfu6MQK6zhHCSKZZTukvfhfe4ZfBNhZQMhMxgS/BEuppBIGiACNdlre7IVMICoaH4Yrsj1
 s+u98gQAOVlRSYyMFQ0IlHR8zPOaGCr5jzpoEfN28cp8G3Rk/YT5GaZmIMsuS/9YEJjQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jvcOm-001CPP-Ed
 for v9fs-developer@lists.sourceforge.net; Wed, 15 Jul 2020 08:04:17 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B5BE2064C;
 Wed, 15 Jul 2020 08:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594800242;
 bh=HIG91/ioMlIScqdxhHK1XI6hYx30577FlENF9j/AlEw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bfepzjD7u8Mx9WRTyJYUr0DmmMF7Fe3KKrMrTFDZnsH4TrYXAvF1hg/OpTq0XbmWP
 Cr6KfiadSdvxq7c0jZlsW/nZKBVwjtIlUggx4lQcpnclJrcTreRe80E9c1NLx3J9Kf
 wTrqHuXAdpBeVGbS7Q924vpShEv7DcwHRUrlcPLM=
Date: Wed, 15 Jul 2020 10:03:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200715080358.GA2521386@kroah.com>
References: <20200713215759.3701482-1-victorhsieh@google.com>
 <20200714121249.GA21928@nautica>
 <20200714205401.GE1064009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714205401.GE1064009@gmail.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvcOm-001CPP-Ed
Subject: Re: [V9fs-developer] [PATCH] fs/9p: Fix TCREATE's fid in protocol
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Eric Biggers <ebiggers@kernel.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Victor Hsieh <victorhsieh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jul 14, 2020 at 01:54:01PM -0700, Eric Biggers wrote:
> On Tue, Jul 14, 2020 at 02:12:49PM +0200, Dominique Martinet wrote:
> > 
> > > Fixes: 5643135a2846 ("fs/9p: This patch implements TLCREATE for 9p2000.L protocol.")
> > > Signed-off-by: Victor Hsieh <victorhsieh@google.com>
> > > Cc: stable@vger.kernel.org
> > 
> > (afaiu it is normally frowned upon for developers to add this cc (I can
> > understand stable@ not wanting spam discussing issues left and right
> > before maintainers agreed on them!) ; I can add it to the commit itself
> > if requested but they normally pick most such fixes pretty nicely for
> > backport anyway; I see most 9p patches backported as long as the patch
> > applies cleanly which is pretty much all the time.
> > Please let me know if I understood that incorrectly)

As Eric says, this is fine to cc: stable with this kind of thing.  It's
good to get a "heads up" on patches that are coming, and Sasha runs some
tests on them as well to make sure that they really are going to apply
to what trees you think they should apply to.

thanks,

greg k-h


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
