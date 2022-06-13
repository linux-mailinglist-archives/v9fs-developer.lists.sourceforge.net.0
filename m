Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87857549EA5
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 22:12:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0qQh-0000m7-Bp; Mon, 13 Jun 2022 20:12:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1o0qQg-0000m0-7p
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 20:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HWaF1QNmxsIR85mJlUFoIZu1n8vlMMKl1k718oV97FY=; b=Jo7WEJAuH5P80F8LxKjfZUC+2u
 eFyQDa+iV+CjcQU9psmQmegASI4u62gZVLQIR2nFslwykXyfaWbdxYqVa0miHKQb4SvVwKRIfCBdb
 x4Yn5N2hQVqPAqqH9bn3O1P4QCKX6tKNAyQZ7LkeQ43KVLsc8DacfdoeoWFczPo25rjk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HWaF1QNmxsIR85mJlUFoIZu1n8vlMMKl1k718oV97FY=; b=lCSQgKRsghj/2Mw34R35qBElgK
 9DiSK1DTm1lxccX7Xj9fjrIhp7h2YdbjVamfdGm9skDB7R2KGB0lQt32EvwLgPQzPOSYoUJkT8qcQ
 27Qkrig29/skdfUDI9VYCar0GyF/A7aKOtmLxPmaAaLi5s4Mugy+f4+4+gWy4/Sky4Pw=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o0qQc-000WH8-7p
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 20:12:54 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id AF05120C29A6;
 Mon, 13 Jun 2022 13:12:43 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com AF05120C29A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1655151164;
 bh=HWaF1QNmxsIR85mJlUFoIZu1n8vlMMKl1k718oV97FY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rgkl+iIpE6OKLauIfR74wAB6KRvdMtoESL9vSIufW93thHl16YFEvhVZifRVbiUu0
 okM9FabZGQj+SsIFQ/0x3Z5PzzvEL2NBkyRKzsuqZAM9kUrt+C5Exm+Jm8AiQyQKhp
 0eiBsjty9nTvwQ25AoDx290CPSd7qIp/f1Cp8d50=
Date: Mon, 13 Jun 2022 15:12:41 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220613201241.GH7401@sequoia>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-7-asmadeus@codewreck.org>
 <20220613175509.GE7401@sequoia> <YqeVFTkREfWUfPFi@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqeVFTkREfWUfPFi@codewreck.org>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-06-14 04:50:45, Dominique Martinet wrote: > Thanks
 for the reviews, > > Tyler Hicks wrote on Mon, Jun 13, 2022 at 12:55:09PM
 -0500: > > > @@ -189,13 +197,13 @@ static struct p9_fid *v9fs_fid_l [...]
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1o0qQc-000WH8-7p
Subject: Re: [V9fs-developer] [PATCH 06/06] 9p fid refcount: cleanup
 p9_fid_put calls
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-06-14 04:50:45, Dominique Martinet wrote:
> Thanks for the reviews,
> 
> Tyler Hicks wrote on Mon, Jun 13, 2022 at 12:55:09PM -0500:
> > > @@ -189,13 +197,13 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> > >  		else
> > >  			uname = v9ses->uname;
> > >  
> > > -		root_fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
> > > -					    v9ses->aname);
> > > -		if (IS_ERR(root_fid))
> > > -			return root_fid;
> > > +		fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
> > 
> > To keep the readability benefits in my "9p: Track the root fid with its
> > own variable during lookups" patch, I think root_fid should be assigned
> > here and then used in the error check and return statement.
> > 
> > > +				       v9ses->aname);
> > > +		if (IS_ERR(fid))
> > > +			return fid;
> > >  
> > > -		p9_fid_get(root_fid);
> > > -		v9fs_fid_add(dentry->d_sb->s_root, root_fid);
> > > +		root_fid = p9_fid_get(fid);
> > > +		v9fs_fid_add(dentry->d_sb->s_root, &fid);
> > 
> > root_fid should be used in the two lines above, too.
> 
> This actually was the only place where we still want to use the root_fid
> after calling v9fs_fid_add; if we keep root_fid above we need to do
> something like
> 
> fid = p9_fid_get(root_fid);
> v9fs_Fid_add(dentry->d_sb->s_root, &root_fid);
> root_fid = fid;
> // fid = NULL; ? not strictly needed as we set it again shortly afterwards
> 
> which I wanted to avoid, but I guess I don't mind strongly either way --
> pick your poison.

Ah, very good point. I missed that subtly.

> I could also just keep v9fs_fid_add as a non-stealing version, but I
> think it's better that way as it strongly signal that we stashed that
> ref away and shouldn't use the fid anymore unless another ref was
> obtained through fid_get like we do here.
> (I was actually tempted to do the same with p9_fid_put, but checking
> other kernel "put"s I didn't see any code that does this so I refrained
> from that churn)

I like the stealing version. Lets go with it and keep this patch as-is.

Please feel free to slap this tag on it:

 Reviewed-by: Tyler Hicks <tyhicks@linux.microsoft.com>


Tyler

> 
> -- 
> Dominique
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
