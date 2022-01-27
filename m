Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5803E49DA37
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 06:31:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCxNR-0006RP-QV; Thu, 27 Jan 2022 05:31:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nCxNQ-0006RJ-Ls
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 05:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=abl95xIeRfnu88PqCTATzlYnRRsdtsJOn+VwgKP8tpc=; b=Pbamsh2fiKbf7iAhZ1OcsweZgp
 Aidtd9G2xw9gWGhaq/BuHurUoTMRCwO8HHPni75yLxtifEyPHMUPYQJfGk03uDcjPFXzqe3/CwmXC
 82JZc0MQMxV27dH77CNV0zUhBoFkdN6tY6JNqAYyL4HJouSu+3qgPgwQHOggW/0kW4IE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=abl95xIeRfnu88PqCTATzlYnRRsdtsJOn+VwgKP8tpc=; b=O
 48I0I2h5FnjOhBFzDgA/PU3v0ZBNdMY6oyKUAQjNJ5fCmB4omNciGVd7vpm17ry0AwFRYcEjSezW1
 HgXphAG1eW2F8+JTHOllH592GVJ+K5MUSK/9wPGO6FzTQgR3K34KRW+WtFfBrmO5cV16TgGmbgjJE
 ZaDUOqOSYHC3sUNU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCxNL-0002jZ-43
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 05:31:19 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9D963C01E; Thu, 27 Jan 2022 06:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643261467; bh=abl95xIeRfnu88PqCTATzlYnRRsdtsJOn+VwgKP8tpc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=3hbDtFFFlfLzZwdBRG2f9M267L5jeaGreZ+eo76sOvsV/ROWgsuNMK9VQ21/B29ju
 Zzeh3aFGNk/bPad2wvaNUmWxXeIgrFper1iHtFrAd4/CmoRIrIpkpqIXpfpCthF61h
 Yvv6pRKFIoM9/TPEPwSUbtbxfQhzsr4qj6IXEVdVr9NvFDknTD8I0WtNHPaYq+2dOo
 9nAhRYdHWvQ300T4hR+sPlR8F6CWV/zqPk3VRpxjeFHlYP1cdwMkj8skzziVITGkrq
 i+rSFl6N+UdKazJv/ooN/Bj11rNyg5G5htFMJHLJF4SR5rhYRQKXFGgmFr/qH7sIkO
 oRlfWq7IJDdlw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 814A9C01B;
 Thu, 27 Jan 2022 06:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1643261466; bh=abl95xIeRfnu88PqCTATzlYnRRsdtsJOn+VwgKP8tpc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=1NqpQD7a7tPMDloG2iPgvUAVC1FRTSwSTV0tLFSW3FcczEIwmoHCqC7h9bdzpQQRL
 Cg2cpJTbBa4ah8XpcF2vfhGHJifGiw3FYILiifgvc8922Aaa/mn8C+2bL4coI8WFTY
 NyPBA93jc8TqVLWSdZtJV8xsOAzxTCIDeYsbrClwcSJ4DU3AhLMHgKWzjsAsvotOn4
 oxOPAOUexbVMwg+fIUqUQYAFs96klwINEm3P4IiYx24qKoRLIaGiBVFAz3whfhBCeR
 Wh0xnqNa0sGoHWAOsUiawELut435mC0Es+PHbz51dy7UY3KVnfkItIHc7DzKzK7lAi
 Trr5lyxZ8PNMw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a847bb55;
 Thu, 27 Jan 2022 05:31:01 +0000 (UTC)
Date: Thu, 27 Jan 2022 14:30:46 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: ron minnich <rminnich@gmail.com>,
	Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <YfIuBlKzYasIhtxf@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTne8PxxAd=gQ-LYYkRmwz+uhbqYtNzZiTkvL8ANHyZMbA@mail.gmail.com>
 <CAP6exYKZqJpfR+Tr3CwJrNE2Pzd-Fd2gYYW_P+he=ZStbBMHUA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ron minnich wrote on Wed, Jan 26, 2022 at 07:34:18PM -0800:
 > Thanks Dominique! That was fast :-) > > If you can offer a suggestion we
 might do on the server side, that > would handle those earlier ke [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nCxNL-0002jZ-43
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ron minnich wrote on Wed, Jan 26, 2022 at 07:34:18PM -0800:
> Thanks Dominique! That was fast :-)
> 
> If you can offer a suggestion we might do on the server side, that
> would handle those earlier kernels in the series, I'm all ears.

Well, it's a bit of a gamble as I don't know if the server has made
other assumptions about it in the first place, but it looks exactly like
the code 'ng' has modified to just remove the check in go9p.

For p9 that you linked to earlier the check is pretty much identical, so
removing the check might let things pass:
-----
diff --git a/p9/handlers.go b/p9/handlers.go
index 53724ad9f2dc..5b59c48ca7bd 100644
--- a/p9/handlers.go
+++ b/p9/handlers.go
@@ -1033,12 +1033,6 @@ func doWalk(cs *connState, ref *fidRef, names []string, getattr bool) (qids []QI
                }
        }
 
-       // Has it been opened already?
-       if _, opened := ref.OpenFlags(); opened {
-               err = linux.EBUSY
-               return
-       }
-
        // Is this an empty list? Handle specially. We don't actually need to
        // validate anything since this is always permitted.
        if len(names) == 0 {
-----

OTOH there probably is a reason this check is here and I wouldn't
seriously suggest this without a bit of investigation first. I didn't
see any difference with the handling of open files wrt refcounting so it
should be safe in this regard, and the cloned fid will not clone the
open status so there won't be any problem in that regard either, but
something else might be wrong.

Either way, it's also good to have a few servers be strict about this
rule even if they don't strictly need it, as it'll let us know of the
problem for servers who really need it :-)
And I'll probably add the check to ganesha as a compile option for
regression testing when this is all over...


Eric Van Hensbergen wrote on Wed, Jan 26, 2022 at 09:40:24PM -0600:
> I was looking at this earlier, and I couldn't remember under what
> conditions that fid mixing would even happen.  IIRC, we always clone before
> an open, so I'm not sure when we do a second open on an already open fid
> --- perhaps a dup?

That open-unlink-xyz series did introduce quite some changes in that
regard... We're now keeping a list of all fids related to an inode
whether they're opened or not, and while Greg's patch was intended to
have the open fids be used for setattr directly without an extra clone
(and is required for that!) it's changing the lookup semantics for all
other lookups and something must have gotten caught in it.

(looking just now, there's at least v9fs_writeback_fid which doesn't
care a bit:
----
struct p9_fid *v9fs_writeback_fid(struct dentry *dentry)
{
...
	ofid = v9fs_fid_lookup_with_uid(dentry, GLOBAL_ROOT_UID, 0);
	fid = clone_fid(ofid);
----
But this got added in the patch after Greg's, so if the bisect didn't
turn it up then there must be other places involved
)

I think it's really just as simple as adding an extra option to
v9fs_fid_find so that users who don't plan on cloning it can get any
fid, and users who will walk a new fid only get unopened ones,
but I'll need to take a moment to check callers.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
