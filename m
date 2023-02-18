Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C61D69BBB3
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 20:58:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTTLo-0001x8-Ml;
	Sat, 18 Feb 2023 19:58:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pTTLm-0001x1-6v
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 19:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C8XrL9CNyt1HtqjywXrajg6YUETn7qZRDBR+dZ8edfQ=; b=H/UM2R3ZL1bkAwFDYjgPnpO5DU
 /bEWDPeGEgCjxYTD223+2Udv1j4wnYcoewl+rGkktjXCAyQ6MIRaAMizmJBCs7WQet3mlzCFB+Aoa
 E3iA/ORztObM9EiT4c/BQC7zu0PfvBhau8D7R67YF+I1KtXkFiYtBdiiSYykVshdpNYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C8XrL9CNyt1HtqjywXrajg6YUETn7qZRDBR+dZ8edfQ=; b=KKpVCPVgKaPKuj5es6ThBP71vm
 rOjVmpHHPi2vWTKpR9Xg9bWqpJpZ97jgRO8e3un8PEVstS4Q5CM6u8R3i2H8A8euJ+mXiUL9ur35e
 3dzdciezbzXniw017FMRYKB3vcobhmGSslvb4SKGq78KY7oXs0dj89V9SNPBr1oPJBhY=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTTLi-00018Z-Mi for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 19:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=C8XrL9CNyt1HtqjywXrajg6YUETn7qZRDBR+dZ8edfQ=; b=b/60iRsAukh4dG7k7Zp5PgccNg
 zOrp2y6rl8UEEKsw5gVWHBlOWdwAMYiVXbhfg7ErOV6J/Bk54gZjM2wtazC+fjNZV2C8Qr/lII3rO
 T3XR93FLw6ZqZE/216m2yb9dbIDvWMgGqIhqM/XK1HgduHPX+029kJ58y0rYjrGtbJg+JAnYjj4k8
 2TMWU7IEa3iGzfsY1UgexiuEItdctYQqwoSEL8RDn4eIa71kh6qOv1CSMnfLWlatFp0lYmz8wRrvm
 I3NBXYbU0uA8ZmFklItY22Vz9fvpfQ5ofcU9PexN23zgV65lYon4fFjoRlh2T4Ld2i/ScZfxAsNk5
 nmlxjttttg9q2ZFDvGc/NA4cCztzK8+JdrXV0DThcy335V36V3BDcUaTfRgNYR53pIUETRbO2zviQ
 +7BUwc1yCElc0GJxXoEqyrgaAKR9Z3fxd7R/epBEjAM0pidrn9cJcN03qEj8kTrgXfEsdu08rc8pJ
 YdhbPjS/PAXllgh3O5TdFs0a5r8IoKVDXta8KStjc5toU3gll+Clun+CAp7I5hnI4vPTyTv1dPLsF
 iuN+1qvFZq7L/QnsqAwu5ElnpZHv2cAy/AY2Hcqxdz1M9Z9BkxD45/yUV8s1DyU2+nKqivU/BfNZ0
 sGmUC4v526CiaV3vjOoHVxR3ZKHXuCeAV7f7HghxM=;
To: Eric Van Hensbergen <ericvh@kernel.org>, asmadeus@codewreck.org
Date: Sat, 18 Feb 2023 20:58:08 +0100
Message-ID: <1983433.kCcYWV5373@silver>
In-Reply-To: <Y/Ch8o/6HVS8Iyeh@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-11-ericvh@kernel.org>
 <Y/Ch8o/6HVS8Iyeh@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, February 18,
 2023 11:01:22 AM CET asmadeus@codewreck.org
 wrote: > Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM +0000:
 > > This fixes several detected problems from preivou [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTTLi-00018Z-Mi
Subject: Re: [V9fs-developer] [PATCH v4 10/11] fs/9p: writeback mode fixes
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, February 18, 2023 11:01:22 AM CET asmadeus@codewreck.org wrote:
> Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:22AM +0000:
> > This fixes several detected problems from preivous
> > patches when running with writeback mode.  In
> > particular this fixes issues with files which are opened
> > as write only and getattr on files which dirty caches.
> > 
> > This patch makes sure that cache behavior for an open file is stored in
> > the client copy of fid->mode.  This allows us to reflect cache behavior
> > from mount flags, open mode, and information from the server to
> > inform readahead and writeback behavior.
> > 
> > This includes adding support for a 9p semantic that qid.version==0
> > is used to mark a file as non-cachable which is important for
> > synthetic files.  This may have a side-effect of not supporting
> > caching on certain legacy file servers that do not properly set
> > qid.version.  There is also now a mount flag which can disable
> > the qid.version behavior.
> > 
> > Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>
> 
> Didn't have time to review it all thoroughly, sending what I have
> anyway...
> 
> > diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9p.rst
> > index 0e800b8f73cc..0c2c7a181d85 100644
> > --- a/Documentation/filesystems/9p.rst
> > +++ b/Documentation/filesystems/9p.rst
> > @@ -79,18 +79,14 @@ Options
> >  
> >    cache=mode	specifies a caching policy.  By default, no caches are used.
> >  
> > -                        none
> > -				default no cache policy, metadata and data
> > -                                alike are synchronous.
> > -			loose
> > -				no attempts are made at consistency,
> > -                                intended for exclusive, read-only mounts
> > -                        fscache
> > -				use FS-Cache for a persistent, read-only
> > -				cache backend.
> > -                        mmap
> > -				minimal cache that is only used for read-write
> > -                                mmap.  Northing else is cached, like cache=none
> > +			=========	=============================================
> > +			none		no cache of file or metadata
> > +			readahead	readahead caching of files
> > +			writeback	delayed writeback of files
> > +			mmap		support mmap operations read/write with cache
> > +			loose		meta-data and file cache with no coherency
> > +			fscache		use FS-Cache for a persistent cache backend
> > +			=========	=============================================
> 
> perhaps a word saying the caches are incremental, only one can be used,
> and listing them in order?
> e.g. it's not clear from this that writeback also enables readahead,
> and as a user I'd try to use cache=readahead,cache=writeback and wonder
> why that doesn't work (well, I guess it would in that order...)

+1 on docs

The question was also whether to make these true separate options before being
merged.

I give these patches a spin tomorrow.





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
