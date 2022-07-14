Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEC9574EC4
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Jul 2022 15:14:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oByg8-0001MJ-39; Thu, 14 Jul 2022 13:14:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oByg7-0001MC-4D
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jul 2022 13:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XhHZFllZttK/nD0DghuHkAh2pYiQ6FVFXSwybTv29+M=; b=RgtQdPzj4WSDWpc+qLOKuGO22N
 mDAt4t3NqxhLBWHPU1JmI/a8NZi+38ABWWu3GhM1vDcjNKAScgSg6O4YnrZ10lGzOVe3Udlta5yvs
 E/Ajsl5mE5id/A9+4+5+EYJVw9mfOe6oZxAgNFPZHNIjpk56SRjZchXug7ED80Kmd7Gk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XhHZFllZttK/nD0DghuHkAh2pYiQ6FVFXSwybTv29+M=; b=aZ4HW/Fa32G2s0EccACHzL1ypJ
 wQ8ANr27FfmAlCHpIKT3ea8hckBV4o3tAoT/s0PmQU3H+1+4qjNMTqft0h72VxIt1yLKElBOmQ299
 OidNX0Fgz0W0dQvQEBqVST0i7huWI0qEPuNOTB6vHNz7G074LEgJgbnTm2oJzfnHrofI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oByg2-0001UK-7r
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Jul 2022 13:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=XhHZFllZttK/nD0DghuHkAh2pYiQ6FVFXSwybTv29+M=; b=qMmQN49rflM5nNAbrtDJndAePo
 JkZBQa4twrJ30algsJoMebfheMEDj3dvPEMTjEs61ybh448PVs7S0+evyXujJGkfhp7wgK79OppbE
 cCooS75r3gjqj/ZScAe2awt8ja6AKbOT4KewCHmroR/G1/ijtcEN72ocsBK9ST6g7z/N825vnPwzc
 JOYlQY25cgg9yjfCbNn6Uq0ubwzMRXNUQS+QkE7WRJBB+X5wnhUASoqG4zGCxgillM9vUW+FsdPOQ
 CHM9C/bOghoqyPT+jjqxBWQ2cW5xzxp2tqHjc3ujH4SxkkQbk+ad6JzrWibSHcYDYN9BWQtXqB3P8
 m41ydZB/IdGkY+6AIu7TaMMKeDn+CSbJhCW0MpdZ0F/GbPv+Nk0jRny1sYD5T16Owx14keLT2KYZA
 plnf9k103TAWyYqoAm+NvkZ8XBNU8U+x5pnsLR1dX157HFtvGhuk3UqC7jet6yMfQ47VhizhWY6FJ
 VYCpzwf6nnyFzsuk7aXNhqaaq/eQgw2CrSGCP/UUcIrsVBnq/P/RhsAknlBv6SAtJxYJO/uIxLkaz
 rqxQhYNl/QKeGbgPZqjbxVIbASa5vd4SVYqAIq5zWFH7Th28K90znIIM/IzQF4uiee/j3MWXgba0E
 O6Xoocfx3t4MpX4rpyWgt8jiXFYI/Cf6unHSMamZE=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 14 Jul 2022 15:14:31 +0200
Message-ID: <1784081.3E5Dq0oo6N@silver>
In-Reply-To: <Ys8wqPbA5eogtvmG@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <5564296.oo812IJUPE@silver> <Ys8wqPbA5eogtvmG@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch, 13. Juli 2022 22:52:56 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 03:06:01PM +0200:
 > > > > + case P9_TWALK: > > > > + BUG_ON(strcmp("ddT", fmt)) [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oByg2-0001UK-7r
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 13. Juli 2022 22:52:56 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Wed, Jul 13, 2022 at 03:06:01PM +0200:
> > > > +	case P9_TWALK:
> > > > +		BUG_ON(strcmp("ddT", fmt));
> > > > +		va_arg(ap, int32_t);
> > > > +		va_arg(ap, int32_t);
> > > > +		{
> > > > +			uint i, nwname = max(va_arg(ap, int), 0);
> > > 
> > > I was about to say that the max is useless as for loop would be cut
> > > short, but these are unsigned... So the code in protocol.c p9pdu_vwritef
> > > 'T' has a bug (int cast directly to uint16): do you want to fix it or
> > > shall I go ahead?
> > 
> > I'd either send a separate patch today for fixing 'T', or if you want
> > to handle it by yourself, then just go ahead.
> 
> I'd appreciate if you have time, doesn't make much difference though

Looking closer at this separate issue; there is probably nothing to fix. 'T'
(and 'R') in p9pdu_vwritef() pulls an 'int' argument from the stack. But the
actual variable is passed here:

struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
			      const unsigned char * const *wnames, int clone)
{
    ...
    req = p9_client_rpc(clnt, P9_TWALK, "ddT", oldfid->fid, fid->fid,
                        nwname, wnames);
    ...
}

So the variable being passed was already uint16_t, which made me re-aware why
this is working anyway: Because C and C++ have this nice language hack that
any variadic integer variable smaller than 'int' is automatically casted to
'int' before being passed.

I mean I could clamp the pulled argument like:

diff --git a/net/9p/protocol.c b/net/9p/protocol.c
index 3754c33e2974..5fd1e948c86a 100644
--- a/net/9p/protocol.c
+++ b/net/9p/protocol.c
@@ -441,7 +441,7 @@ p9pdu_vwritef(struct p9_fcall *pdu, int proto_version, const char *fmt,
                        }
                        break;
                case 'T':{
-                               uint16_t nwname = va_arg(ap, int);
+                               uint16_t nwname = clamp_t(int, va_arg(ap, int), 0, USHRT_MAX);
                                const char **wnames = va_arg(ap, const char **);
 
                                errcode = p9pdu_writef(pdu, proto_version, "w",
@@ -462,7 +462,7 @@ p9pdu_vwritef(struct p9_fcall *pdu, int proto_version, const char *fmt,
                        }
                        break;
                case 'R':{
-                               uint16_t nwqid = va_arg(ap, int);
+                               uint16_t nwqid = clamp_t(int, va_arg(ap, int), 0, USHRT_MAX);
                                struct p9_qid *wqids =
                                    va_arg(ap, struct p9_qid *);

But it's pretty much pointless overhead. Another option would be to change
va_arg(ap, int) -> va_arg(ap, uint16_t), just to make it more clear what was
pushed from the other side.

Which probably also means I can simply drop the max() call in this patch 10
here as well.

For the 'R' case: I haven't found the spot where this is actually used.

> > > > +	case P9_TCREATE:
> > > > +		BUG_ON(strcmp("dsdb?s", fmt));
> > > > +		va_arg(ap, int32_t);
> > > > +		{
> > > > +			const char *name = va_arg(ap, const char *);
> > > > +			if ((c->proto_version != p9_proto_2000u) &&
> > > > +			    (c->proto_version != p9_proto_2000L))
> > > 
> > > (I don't think 9p2000.L can call TCREATE, but it doesn't really hurt
> > > either)
> > 
> > Yes, Tcreate is only 9p2000 and 9p2000.u. Semantically this particular
> > check here means "if proto == 9p.2000". I can't remember anymore why I
> > came up with this inverted form here. I'll change it to "if
> > (c->proto_version == p9_proto_legacy)".
> 
> Sounds good.
> 
> > > > +	case P9_TRENAMEAT:
> > > if we have trenameat we probably want trename, tunlinkat as well?
> > > What's your criteria for counting individually vs slapping 8k at it?
> > > 
> > > In this particular case, oldname/newname are single component names
> > > within a directory so this is capped at 2*(4+256), that could easily fit
> > > in 4k without bothering.
> > 
> > I have not taken the Linux kernel's current filename limit NAME_MAX
> > (255) as basis, in that case you would be right. Instead I looked up
> > what the maximum filename length among file systems in general was,
> > and saw that ReiserFS supports up to slightly below 4k? So I took 4k
> > as basis for the calculation used here, and the intention was to make
> > this code more future proof. Because revisiting this code later on
> > always takes quite some time and always has this certain potential to
> > miss out details.
> 
> hmm, that's pretty deeply engrained into the VFS but I guess it might
> change eventually, yes.
> 
> I don't mind as long as we're consistent (cf. unlink/mkdir below), in
> practice measuring doesn't cost much.

OK, I also make that more clear from the commit log then that 4k was taken as
basis and why.

> > Independent of the decision; additionally it might make sense to add
> > something like:
> > 
> > #if NAME_MAX > 255
> > # error p9_msg_buf_size() needs adjustments
> > #endif
> 
> That's probably an understatement but I don't mind either way, it
> doesn't hurt.
> 
> > > > +		BUG_ON(strcmp("dsds", fmt));
> > > > +		va_arg(ap, int32_t);
> > > > +		{
> > > > +			const char *oldname = va_arg(ap, const char *);
> > > > +			va_arg(ap, int32_t);
> > > > +			{
> > > > +				const char *newname = va_arg(ap, const char *);
> > > 
> > > (style nitpick) I don't see the point of nesting another level of
> > > indentation here, it feels cleaner to declare oldname/newname at the
> > > start of the block and be done with it.
> > 
> > Because  va_arg(ap, int32_t);  must remain between those two
> > declarations, and I think either the compiler or style check script
> > was barking at me. But I will recheck, if possible I will remove the
> > additional block scope here.
> 
> Yes, I think it'd need to look like this:
> 
> 	case foo:
> 		BUG_ON(...)
> 		va_arg(ap, int32_t);
> 		{
> 			const char *oldname = va_arg(ap, const char *);
> 			const char *newname;
> 			va_arg(ap, int32_t);
> 			newname = va_arg(ap, const_char *);
> 			...
> 		}
> or
> 		{
> 			const char *oldname, *newname;
> 			oldname = va_arg(ap, const char *);
> 			va_arg(ap, int32_t)
> 			newname = va_arg(ap, const char *);
> 			...
> 		}
> 
> I guess the later is slightly easier on the eyes

Ah yes, that's your win there.

> > > > +	/* small message types */
> > > 
> > > ditto: what's your criteria for 4k vs 8k?
> > 
> > As above, 4k being the basis for directory entry names, plus PATH_MAX
> > (4k) as basis for maximum path length.
> > 
> > However looking at it again, if NAME_MAX == 4k was assumed exactly,
> > then Tsymlink would have the potential to exceed 8k, as it has name[s]
> > and symtgt[s] plus the other fields.
> 
> yes.
> 
> > > > +	case P9_TSTAT:
> > > this is just fid[4], so 4k is more than enough
> > 
> > I guess that was a typo and should have been Twstat instead?
> 
> Ah, had missed this because 9p2000.L's version of stat[n] is fixed size.
> Sounds good.
> 
> > > > +	case P9_RSTAT:
> > > also fixed size 4+4+8+8+8+8+8+8+4 -- fits in 4k.
> > 
> > Rstat contains stat[n] which in turn contains variable-length string
> > fields (filename, owner name, group name)
> 
> Right, same mistake.
> 
> > > > +	case P9_TSYMLINK:
> > > that one has symlink target which can be arbitrarily long (filesystem
> > > specific, 4k is the usual limit for linux but some filesystem I don't
> > > know might handle more -- it might be worth going through the trouble of
> > > going through it.
> > 
> > Like mentioned above, if exactly NAME_MAX == 4k was assumed, then
> > Tsymlink may even be >8k.
> 
> And all the other remarks are 'yes if we assume bigger NAME_MAX' -- I'm
> happy either way.
> 
> > > rest all looks ok to me.
> > 
> > Thanks for the review! I know, that's really a dry patch to look
> > at. :)
> 
> Thanks for writing it in the first place ;)
> 
> --
> Dominique






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
