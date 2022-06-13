Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC64549E16
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 21:51:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0q5n-0005vu-Ts; Mon, 13 Jun 2022 19:51:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o0q5m-0005vo-8k
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 19:51:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UEvKISJURFgyGo3z5EU/K/Ie2JUi/EPJT4jZw0U6fw8=; b=DKbSDgDymv80rcwGUw0KY3Rwlp
 UWjx2XdRZfO9q078l4a9aUrfiAO2rqwbNO1THp56f4FBGke7ZnzaJHcGi4Pf5CqE3XYm8o+hAiM5A
 1IQPjH4WG5TlD7YuBPFgXkKJoZdFHBoXeuPsP5imsf3r288Hyu6BXbnllAH413mwrDdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UEvKISJURFgyGo3z5EU/K/Ie2JUi/EPJT4jZw0U6fw8=; b=RH7GVPv+FqK2XkqRjsMKzwjqXt
 uZ+k4HOUTWPXBwGrtOknm8b95IEEGtRVoTnjcr0ODB0k5BMIeSeczKcB42/JVxHaljU1QV9ys2SyO
 3MXHNPBNUpHrZ/iP7xIo7xLbsunBbyph/nDbH4PHerszGlTlUm95tv4KCMGoNHgj0DoA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0q5i-000VY6-D8
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 19:51:16 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 2395BC01D; Mon, 13 Jun 2022 21:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655149867; bh=UEvKISJURFgyGo3z5EU/K/Ie2JUi/EPJT4jZw0U6fw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RceXwHRGU7mqLO5rOsg7z085gkBFou3uzTxjZfPWhq0xDjwKssqvNp89OR90eUn7V
 HX9lENgU62yupn1S9FeQRbWZdIHuTofXJAUWyF8AxIiQ1O4fVIg3NMs3TxhqX1VCkW
 rRselTe5r0wl0cgMXHNvizTFcVjNlI6iO9i5dft8d/hCv+BvVzTj3WfnxNguZRyg3H
 S3pllg24g4HcTbzS9ZgB1JGroeXYutAO4oMTvW6WlTR//Vhc1eNpmqlqffeXV2Qa2F
 cc9d/jhqInRKiHT7a1sXYjYMKEnXuImEtAIfzRr4Wtft+IXmZ8eAPtu287JNr+IgOw
 vMJrx+D0bRW1A==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 97D3EC009;
 Mon, 13 Jun 2022 21:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1655149866; bh=UEvKISJURFgyGo3z5EU/K/Ie2JUi/EPJT4jZw0U6fw8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sk0XCve553x6PF2rViDkpNAIAyr7AA8IvuCw6ijYTB1QOjfqK7/iYhH+nFjU3x1A3
 MVm9LmcLyaKJs5JQOnkbTBbHQNUOcP/aB/4O0r37Ce72bsEtEiHkx/s8kUk8GgPevm
 uOSYm8N27rnBzpH+XMSPYn1VNZ61KKUKWNPazusRgFFd84/uEl+qmuoP+XDVEAe4DU
 uy4rrqCdSecetimU8CpHVtW4Op+gsfE2ntoculz1V4QsCysyuhuRDE2XSZaalAZGqF
 +CW2FJpCtgi169KQqCr2CaII3pglXwORvZBLDdlmvuggqbX+0wy8OqGvj5UEC0xYeN
 Cp7DlgCEk2R/A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id cc73f8c0;
 Mon, 13 Jun 2022 19:51:01 +0000 (UTC)
Date: Tue, 14 Jun 2022 04:50:45 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tyler Hicks <tyhicks@linux.microsoft.com>
Message-ID: <YqeVFTkREfWUfPFi@codewreck.org>
References: <20220612085330.1451496-1-asmadeus@codewreck.org>
 <20220612085330.1451496-7-asmadeus@codewreck.org>
 <20220613175509.GE7401@sequoia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613175509.GE7401@sequoia>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for the reviews, Tyler Hicks wrote on Mon, Jun 13,
 2022 at 12:55:09PM -0500: > > @@ -189, 13 +197,
 13 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct
 dentry *dentry, > > else > > uname = v9ses->uname; > > > > - [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0q5i-000VY6-D8
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

Thanks for the reviews,

Tyler Hicks wrote on Mon, Jun 13, 2022 at 12:55:09PM -0500:
> > @@ -189,13 +197,13 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
> >  		else
> >  			uname = v9ses->uname;
> >  
> > -		root_fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
> > -					    v9ses->aname);
> > -		if (IS_ERR(root_fid))
> > -			return root_fid;
> > +		fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
> 
> To keep the readability benefits in my "9p: Track the root fid with its
> own variable during lookups" patch, I think root_fid should be assigned
> here and then used in the error check and return statement.
> 
> > +				       v9ses->aname);
> > +		if (IS_ERR(fid))
> > +			return fid;
> >  
> > -		p9_fid_get(root_fid);
> > -		v9fs_fid_add(dentry->d_sb->s_root, root_fid);
> > +		root_fid = p9_fid_get(fid);
> > +		v9fs_fid_add(dentry->d_sb->s_root, &fid);
> 
> root_fid should be used in the two lines above, too.

This actually was the only place where we still want to use the root_fid
after calling v9fs_fid_add; if we keep root_fid above we need to do
something like

fid = p9_fid_get(root_fid);
v9fs_Fid_add(dentry->d_sb->s_root, &root_fid);
root_fid = fid;
// fid = NULL; ? not strictly needed as we set it again shortly afterwards

which I wanted to avoid, but I guess I don't mind strongly either way --
pick your poison.
I could also just keep v9fs_fid_add as a non-stealing version, but I
think it's better that way as it strongly signal that we stashed that
ref away and shouldn't use the fid anymore unless another ref was
obtained through fid_get like we do here.
(I was actually tempted to do the same with p9_fid_put, but checking
other kernel "put"s I didn't see any code that does this so I refrained
from that churn)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
