Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD2554A37A
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Jun 2022 03:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0v9H-0005ST-Go; Tue, 14 Jun 2022 01:15:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1o0v9G-0005SN-6f
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 01:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jv9RhEpcUlvGbL9sQ7elV4SIcD7tvGoqa9vr/gW0wBY=; b=F6m+UhLpBlB9gPwgLHdZlR3fbP
 GoPZ/lHrNI59AhGx2vG3OFY2JSs7jBq50j3fm21nTGDKo8whhElnD5YfPM62Kl7oMXRSWH67HMz5+
 aUKU6tIv1Y41B45lMe+RIdpgdWmy0eSE8dyOdFLydjYtNYUp0gkF5c8QWVNUmnA1KhCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jv9RhEpcUlvGbL9sQ7elV4SIcD7tvGoqa9vr/gW0wBY=; b=FFTZ0wOaGrD20h67DGEbGqmxgP
 EU+UUHO2kwKHVfqWdh0f+CavJHhoLoXYYlbxqxwZSxHFqp9+GEAOmFnJvSDR7+UhTEg1znhIxz2Rj
 XmtWknLqMMligmj/07XM1i3h2yyDHRpTsV4iLbdRx2LgLBTfDjefeYCRusR/M2yldUc0=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o0v97-000hdN-3f
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Jun 2022 01:15:12 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id B923520C29A6;
 Mon, 13 Jun 2022 18:14:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com B923520C29A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1655169298;
 bh=jv9RhEpcUlvGbL9sQ7elV4SIcD7tvGoqa9vr/gW0wBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IuMF/Gj6OCjwCm1oyiAXJeUN4MMtG+TIxmT7cyh6m1sPL8INXRIPEPydjL6j+B1pw
 4QF2jdYTH2aulyWdGA+3BUKkgiHnZHmhs8/OvXzhWc51r/1iKxB3IowBg5zxs8uTy8
 zt6HbBnQwYRrJvOaUnkM70BzBWr5DjxViV8L9IOo=
Date: Mon, 13 Jun 2022 20:14:55 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220614011455.GJ7401@sequoia>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220613202053.GI7401@sequoia> <YqelZWe4BJfDkYEd@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqelZWe4BJfDkYEd@codewreck.org>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-14 06:00:21, Dominique Martinet wrote: > Tyler
 Hicks wrote on Mon, Jun 13,
 2022 at 03:20:53PM -0500: > > On 2022-06-12 17:53:23, 
 Dominique Martinet wrote: > > > @@ -222,7 +221,8 @@ static s [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0v97-000hdN-3f
Subject: Re: [V9fs-developer] [PATCH 00/06] fid refcounting improvements and
 fixes
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
Cc: v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-14 06:00:21, Dominique Martinet wrote:
> Tyler Hicks wrote on Mon, Jun 13, 2022 at 03:20:53PM -0500:
> > On 2022-06-12 17:53:23, Dominique Martinet wrote:
> > > @@ -222,7 +221,8 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> > >                  * We need to hold rename lock when doing a multipath
> > >                  * walk to ensure none of the patch component change
> > >                  */
> > > -               fid = p9_client_walk(old_fid, l, &wnames[i], clone);
> > > +               fid = p9_client_walk(old_fid, l, &wnames[i],
> > > +                                    old_fid == root_fid /* clone */);
> > 
> > This is no problem at all. The rebased patches look good to me. Squash
> > your fix to my fix and it should be ready to go.
> 
> Thanks for all your reviews :)
> I've rebased my branch if you want to check:
> https://github.com/martinetd/linux/commits/9p-next

I've diffed the individual patches from before and after the rebase. It
all looks great to me.

> We've just started a cycle so I'll submit the first three patches (fixes
> to stable) next week, and the rest for when 5.20 cycle starts.

That sounds like the right plan to me.

> Feel free to remind me if it looks like I forgot.

Will do!

Tyler

> -- 
> Dominique
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
