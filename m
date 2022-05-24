Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E557532901
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 May 2022 13:30:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntSkG-0007Ig-8h; Tue, 24 May 2022 11:30:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1ntSkD-0007IH-Hk
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 11:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d993qO1M6uJRVL7vFommU2cm1CrcueVdWyz7bnjmjWQ=; b=A58cwMTMaGNfuI9mmIgNLCYmGf
 xn5MXvkE/xufMQrXuvtBQQtsYt+udS/GC6IZD0IcimNVLvdSmJrFu8pJ8QTsLBm7HrBZjxPrPOdgo
 a11sVLpx4rjNBEnWoYehX1n5Iqi3tVeMNCfZH3AAinEXzkY8cgdPVsOSmbq45oPjSjds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d993qO1M6uJRVL7vFommU2cm1CrcueVdWyz7bnjmjWQ=; b=mhF4uG3RevpqxL72EXw/scir6z
 YyhTmsgIwHJCxCud9zbDq7IiI8PLUJ3PJiw6N75WhV7l2wHz0o/jKWXvDsQ0QcFkKVec3V7qrjCcA
 t4P1FCpeM7NSAgXsZK7hC9BIvEojtTNq8PdSjnVmneQEfXAV7GVIB8GnbHeuoFdr/tuI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ntSk9-0006Y8-Fu
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 11:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=d993qO1M6uJRVL7vFommU2cm1CrcueVdWyz7bnjmjWQ=; b=ZWOhwa8dIWaLynxqpKMd9oYmxi
 2jUo9cDHxRlrLja8c52bchWZrBfxNFTdhzuP0bfE9NuuS5HMke69wr63zyHuHAv65BHYQZDCHh1a7
 mU0SAhzkRS9+GoUURFV1S9VWSfJb/A9OoZ21lawBhLza0rTh+OgL+Ztcth0J1CzoXuUgMmHB56j8J
 SYp6X1/TbZDp+WtMBT0HFRE7TKcJXBxfdaxi3mGd84PKyYpig7eb5YtSLzIQKwqLylLNZMZP21aHu
 GkxapMb7JrnZrIdH8gC8HmvufHtIbDpt+6jzwqdhjGWKpzullwRzOGpmv2MAXJdK6UGTRTbotnh6F
 4C/oi6LuGn1Yukt70ZZT0iMhnkM94+Y5Bj8L6XcUO3Jg/GNPiqgF4F4JjLsUioYVhPacDFYCApIt8
 V6AVAl5FgX4Zduu4sy57baB/730X55lNgCsK3Js4ii4wfccjGiJ+TtzAvbdH4V+aD2DM7wDq/1v6B
 q6Cgz8wVHv7jtOtgxfW959SsSoffALZu7h6eK1X0IiTqAR4Ulmfo+SNxIIZv2VjsVAk7UkYFrZiUY
 bdID9VhoQBMeYfniLtIHahsT7jVRoDwf2ld9S2uJ0HBuCptc4SCSFjv83k5GL+ozRC8nUEP+kwi7F
 tvNG3hahP/KRMOkd0cv9mMyG1msj80ppyQO3mBBK0=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Nikolay Kichukov <nikolay@oldum.net>
Date: Tue, 24 May 2022 13:29:18 +0200
Message-ID: <2799122.FyIdJ7nTd3@silver>
In-Reply-To: <2380b79f721caf9e6b99aa680b9b29c76fd4e2f4.camel@oldum.net>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <Ye6IaIqQcwAKv0vb@codewreck.org>
 <2380b79f721caf9e6b99aa680b9b29c76fd4e2f4.camel@oldum.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag,
 24. Mai 2022 10:10:31 CEST Nikolay Kichukov wrote:
 > Hello Dominique, > > On Mon, 2022-01-24 at 20:07 +0900, Dominique Martinet
 wrote: > > Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 1 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ntSk9-0006Y8-Fu
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 24. Mai 2022 10:10:31 CEST Nikolay Kichukov wrote:
> Hello Dominique,
> 
> On Mon, 2022-01-24 at 20:07 +0900, Dominique Martinet wrote:
> > Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM +0100:
> > > It works, sorry for overlooking the 'known limitations' in the first
> > > place. When do we expect these patches to be merged upstream?
> > 
> > We're just starting a new development cycle for 5.18 while 5.17 is
> > stabilizing, so this mostly depends on the ability to check if a msize
> > given in parameter is valid as described in the first "STILL TO DO"
> > point listed in the cover letter.
> > 
> > I personally would be happy considering this series for this cycle
> > with
> > just a max msize of 4MB-8k and leave that further bump for later if
> > we're sure qemu will handle it.
> > We're still seeing a boost for that and the smaller buffers for small
> > messages will benefit all transport types, so that would get in in
> > roughly two months for 5.18-rc1, then another two months for 5.18 to
> > actually be released and start hitting production code.
> > 
> > 
> > I'm not sure when exactly but I'll run some tests with it as well and
> > redo a proper code review within the next few weeks, so we can get
> > this
> > in -next for a little while before the merge window.
> 
> Did you make it into 5.18? I see it just got released...

No, not yet. I can send a v5 as outlined above, including opt-out for the RDMA 
transport as Dominique noted, that wouldn't be much work for me.

However ATM I fear it would probably not help anybody, as we currently have 
two far more serious issues [1] regarding 9p's cache support introduced by the 
netfs changes: 

1. 9p cache enabled performs now worse than without any cache.

2. There are misbehaviours once in a while, as 9p cache opens FIDs in read-
only mode and once in a while then tries to write with those read-only FIDs 
which causes EBADF errors.

[1] https://lore.kernel.org/lkml/9591612.lsmsJCMaJN@silver/

Issue (2.) can probably be fixed by just opening the FIDs in RW mode, as 
suggested by Dominique. But for performance issue (1.) nobody had an idea yet.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
