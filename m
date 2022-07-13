Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 650DD573E3F
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 22:53:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBjMc-00055C-Hn; Wed, 13 Jul 2022 20:53:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBjMO-00054z-Eb
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 20:53:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K0t2nQU6Z9i8Kte1FwmB5MsugxFnhvvJtm4r22yivn0=; b=k1DfNeP3fMVA98U6WJZvR7TMvJ
 WW8rT+Wg7jT/lfuDS6EmEu4K0Zx7u1bSlGfF9n+TK5qUT6jFAfb13o7Sx4yFROglwn0XFq/iaHhBE
 JtH8km3MKxC/vOVPhYvSqc7zJPF+EYf69txbR7UzDzMCLcdUnjfnHh8Eoy3px95PCmk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K0t2nQU6Z9i8Kte1FwmB5MsugxFnhvvJtm4r22yivn0=; b=RH3cHC5Ci9a3s4XzMU7FiCqi4l
 0AOqga/iEvGqg7M8cpydukjhctpl8DwFRBOqiY912vBMb9VVrLD17nJL6kLzORCGNcnxT/y9S5RsY
 Q5QKMThSq1pZXUilZfUGeek3ydgc7lUW6PNw0ncmJZMcEISy1wx8jp/iJc22Ro3BDmn4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBjMM-00FzAu-Uc
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 20:53:29 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B13EFC01C; Wed, 13 Jul 2022 22:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657745598; bh=K0t2nQU6Z9i8Kte1FwmB5MsugxFnhvvJtm4r22yivn0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d1mvdtYyc0kR9x/5L8IazKBJW08/GA7DX7Vku3o3m9V+clYNUhARVWr9ZvnU6cEHK
 TZ/FbQCm9Bd8xrl3dWRcNmcpADfeMCHrmtCyeOwWDkR8RTQU6W7flqNI3xJfz4Linr
 UVRhEgJ8QNGwy5dqQKew9US329F/DwUVLHuKQSHIfTb9SUZBEyE3uaaMNGNTme0Fpx
 prSRM3RlkPFq/dYYrt2UQ0IZHgWr/PRAJ/La6b8z77vMCXJqEAnIAFjRJ+LOO9ZvAp
 hoXXU3x0+H8YlabwMdR+Jxl3QavDgIkV7EMnlKDCp2yMyvE7+L8Nx2/lLaN4OR0OVb
 SGlFV5LQhX58Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id AC857C009;
 Wed, 13 Jul 2022 22:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657745597; bh=K0t2nQU6Z9i8Kte1FwmB5MsugxFnhvvJtm4r22yivn0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hWx3aUgz3RJn6I3fyGo4g4XkNVwPxTIXuTAVAkJGkM9QQOQPPuS+EDvLQSCWnkwxj
 crBN0yPH3L+K0eTnZzJFCPsqQcV49PnDQ05LV86byDP6iqCKCBNW9bc+HjcctdADjO
 pp1IpjMN/fZTS/2tSv4s0GxljsnH44yxMfZLwUx/NaRykfHQjfhJUR8vZAMGg0VuWa
 AhTsoF1yTzQf6g4+WzWf+1gC9ubdalHdlMjehppENHaN2cuXqzjzg7lasvSGxTOu8r
 0SGhLW0KGWc6LKd14Q1D8APRj5gWN4ga79FWr9kegDpFrYaldrM4DqOW90UIVP5ad2
 j6NvqBgyTtK5g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9a196f67;
 Wed, 13 Jul 2022 20:53:11 +0000 (UTC)
Date: Thu, 14 Jul 2022 05:52:56 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys8wqPbA5eogtvmG@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <2ade510b2e67a30c1064bcd7a8b6c73e6777b9ed.1657636554.git.linux_oss@crudebyte.com>
 <Ys6ei46QxeqvqOSe@codewreck.org> <5564296.oo812IJUPE@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5564296.oo812IJUPE@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Wed, Jul 13,
 2022 at 03:06:01PM
 +0200: > > > + case P9_TWALK: > > > + BUG_ON(strcmp("ddT", fmt)); > > > +
 va_arg(ap, int32_t); > > > + va_arg(ap, int32_t); > > > + { > > [...] 
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBjMM-00FzAu-Uc
Subject: Re: [V9fs-developer] [PATCH v5 10/11] net/9p: add p9_msg_buf_size()
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 03:06:01PM +0200:
> > > +	case P9_TWALK:
> > > +		BUG_ON(strcmp("ddT", fmt));
> > > +		va_arg(ap, int32_t);
> > > +		va_arg(ap, int32_t);
> > > +		{
> > > +			uint i, nwname = max(va_arg(ap, int), 0);
> > 
> > I was about to say that the max is useless as for loop would be cut
> > short, but these are unsigned... So the code in protocol.c p9pdu_vwritef
> > 'T' has a bug (int cast directly to uint16): do you want to fix it or
> > shall I go ahead?
> 
> I'd either send a separate patch today for fixing 'T', or if you want
> to handle it by yourself, then just go ahead.

I'd appreciate if you have time, doesn't make much difference though

> > > +	case P9_TCREATE:
> > > +		BUG_ON(strcmp("dsdb?s", fmt));
> > > +		va_arg(ap, int32_t);
> > > +		{
> > > +			const char *name = va_arg(ap, const char *);
> > > +			if ((c->proto_version != p9_proto_2000u) &&
> > > +			    (c->proto_version != p9_proto_2000L))
> > 
> > (I don't think 9p2000.L can call TCREATE, but it doesn't really hurt
> > either)
> 
> Yes, Tcreate is only 9p2000 and 9p2000.u. Semantically this particular
> check here means "if proto == 9p.2000". I can't remember anymore why I
> came up with this inverted form here. I'll change it to "if
> (c->proto_version == p9_proto_legacy)".

Sounds good.

> > > +	case P9_TRENAMEAT:
> > if we have trenameat we probably want trename, tunlinkat as well?
> > What's your criteria for counting individually vs slapping 8k at it?
> > 
> > In this particular case, oldname/newname are single component names
> > within a directory so this is capped at 2*(4+256), that could easily fit
> > in 4k without bothering.
> 
> I have not taken the Linux kernel's current filename limit NAME_MAX
> (255) as basis, in that case you would be right. Instead I looked up
> what the maximum filename length among file systems in general was,
> and saw that ReiserFS supports up to slightly below 4k? So I took 4k
> as basis for the calculation used here, and the intention was to make
> this code more future proof. Because revisiting this code later on
> always takes quite some time and always has this certain potential to
> miss out details.

hmm, that's pretty deeply engrained into the VFS but I guess it might
change eventually, yes.

I don't mind as long as we're consistent (cf. unlink/mkdir below), in
practice measuring doesn't cost much.

> Independent of the decision; additionally it might make sense to add
> something like:
> 
> #if NAME_MAX > 255
> # error p9_msg_buf_size() needs adjustments
> #endif

That's probably an understatement but I don't mind either way, it
doesn't hurt.


> > > +		BUG_ON(strcmp("dsds", fmt));
> > > +		va_arg(ap, int32_t);
> > > +		{
> > > +			const char *oldname = va_arg(ap, const char *);
> > > +			va_arg(ap, int32_t);
> > > +			{
> > > +				const char *newname = va_arg(ap, const char *);
> > 
> > (style nitpick) I don't see the point of nesting another level of
> > indentation here, it feels cleaner to declare oldname/newname at the
> > start of the block and be done with it.
> 
> Because  va_arg(ap, int32_t);  must remain between those two
> declarations, and I think either the compiler or style check script
> was barking at me. But I will recheck, if possible I will remove the
> additional block scope here.

Yes, I think it'd need to look like this:

	case foo:
		BUG_ON(...)
		va_arg(ap, int32_t);
		{
			const char *oldname = va_arg(ap, const char *);
			const char *newname;
			va_arg(ap, int32_t);
			newname = va_arg(ap, const_char *);
			...
		}
or
		{
			const char *oldname, *newname;
			oldname = va_arg(ap, const char *);
			va_arg(ap, int32_t)
			newname = va_arg(ap, const char *);
			...
		}
		
I guess the later is slightly easier on the eyes


> > > +	/* small message types */
> > 
> > ditto: what's your criteria for 4k vs 8k?
> 
> As above, 4k being the basis for directory entry names, plus PATH_MAX
> (4k) as basis for maximum path length.
> 
> However looking at it again, if NAME_MAX == 4k was assumed exactly,
> then Tsymlink would have the potential to exceed 8k, as it has name[s]
> and symtgt[s] plus the other fields.

yes.


> > > +	case P9_TSTAT:
> > this is just fid[4], so 4k is more than enough
> 
> I guess that was a typo and should have been Twstat instead?

Ah, had missed this because 9p2000.L's version of stat[n] is fixed size.
Sounds good.

> > > +	case P9_RSTAT:
> > also fixed size 4+4+8+8+8+8+8+8+4 -- fits in 4k.
> 
> Rstat contains stat[n] which in turn contains variable-length string
> fields (filename, owner name, group name)

Right, same mistake.

> 
> > > +	case P9_TSYMLINK:
> > that one has symlink target which can be arbitrarily long (filesystem
> > specific, 4k is the usual limit for linux but some filesystem I don't
> > know might handle more -- it might be worth going through the trouble of
> > going through it.
> 
> Like mentioned above, if exactly NAME_MAX == 4k was assumed, then
> Tsymlink may even be >8k.

And all the other remarks are 'yes if we assume bigger NAME_MAX' -- I'm
happy either way.


> > rest all looks ok to me.
> 
> Thanks for the review! I know, that's really a dry patch to look
> at. :)

Thanks for writing it in the first place ;)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
