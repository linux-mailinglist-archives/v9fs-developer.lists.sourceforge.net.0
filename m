Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF8F576D39
	for <lists+v9fs-developer@lfdr.de>; Sat, 16 Jul 2022 11:54:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oCeVf-0000j0-Ex; Sat, 16 Jul 2022 09:54:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oCeVd-0000i9-Hs
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 09:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GA5oE+W/bwGhbahSm4RvG4PVxOwv8L+ex/kt0Pn3hT8=; b=fF4laF+Thp/6TVmXLowXrUCJhK
 CjHt5qIelcEGNlxHEYI3Uf3nUYXnS024JgNiI0M5Q2FpQHdVttKwhYZ7Yxzm2lgQuP9+tMSZpDEyj
 BSfYHI/WGzGsYZdTySDa/gsmxstGhK/MKHOgy57ElefqFRYKYN/39os4WGE/oO6WZATk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GA5oE+W/bwGhbahSm4RvG4PVxOwv8L+ex/kt0Pn3hT8=; b=dmRMFMskTYkGe75e29g90qJPA0
 +VMsowHAfPzJVdOs0/hNhJlxMRzUeCjqDlAJuqdWR0zkxc4VYxE92WnyVzsaASrgSFQYUNxOfIFCR
 n9d89mcBZNYAQ5PW4F1QIrbSZ8GXmyerSfjJDHe0GBqTg+K7Gs3GUdx88eTGHKNFjcWc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oCeVa-0003GJ-GN
 for v9fs-developer@lists.sourceforge.net; Sat, 16 Jul 2022 09:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=GA5oE+W/bwGhbahSm4RvG4PVxOwv8L+ex/kt0Pn3hT8=; b=fFO9l0uw/uTwB+tqGvHipuxlqN
 GSIUkkssehpqjJ/e4noi4vPnshdggGeYB94HH1A64Q+qtb0yUCTCOjBudKJFLwvuVFDSwSoXEZmOu
 ysHnupcxGDDa+16pcqSG1qHRRS7bcPseISLSQSQqbFO9Cfu1Uiz3ovzWjJ6q78lO13g6MQJZTbeXd
 xtXuD5yjhL8AVRj058exssU1+5NcPQ+qgMG/BbJdRDayDwmtY9hZX6hmDtRUw74F1zveaY+7nf101
 ywyXoqNf25DzYzdumwCHsLllGUMJf/nkKadvDtEBewG3YWKRNBUdfHaMekt2225vKDG6oz4kUFQ49
 Ubg4DhIjCIkBqiWUcd3WOo/LwOT13RWashEuya7duNyq2H3782SzsSUirVCGs8N2VegUwC/dv3Yb4
 kZghelwxYzT8UGsqOLq40HnTRAfRNdJe9jBXrANOYuPHSwJqzdJcQ0nQ3T2XREHitTCSRpge0MUIJ
 6n/esUfiBxASqmaZWEgcvehOg7sYx8Hfpkr1rmnABLdaLQwX1Q3X0s4BoO5l0b5siIrjaD7qh73DZ
 KP2YEfv/T55GfRCuZDDEuX6FifI69/AZqK0LiE7q2AfeIdkIutaGY06mxfrbCdWfS3/GcoSl3JI9y
 z9sk5rIzJfdcxyvf2EuBRxz8+bUfX/N3H4wagTk4A=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sat, 16 Jul 2022 11:54:29 +0200
Message-ID: <6713865.4mp09fW1HV@silver>
In-Reply-To: <YtH4M9GvVdAsSCz2@codewreck.org>
References: <cover.1657920926.git.linux_oss@crudebyte.com>
 <YtHqlVx9/joj+AXH@codewreck.org> <YtH4M9GvVdAsSCz2@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 16. Juli 2022 01:28:51 CEST Dominique Martinet
 wrote: > Dominique Martinet wrote on Sat, Jul 16, 2022 at 07:30:45AM +0900:
 > > Christian Schoenebeck wrote on Fri, Jul 15, 2022 at 11:35:26P [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1oCeVa-0003GJ-GN
Subject: Re: [V9fs-developer] [PATCH v6 00/11] remove msize limit in virtio
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 16. Juli 2022 01:28:51 CEST Dominique Martinet wrote:
> Dominique Martinet wrote on Sat, Jul 16, 2022 at 07:30:45AM +0900:
> > Christian Schoenebeck wrote on Fri, Jul 15, 2022 at 11:35:26PM +0200:
> > > * Patches 7..11 tremendously reduce unnecessarily huge 9p message sizes
> > > and
> > > 
> > >   therefore provide performance gain as well. So far, almost all 9p
> > >   messages
> > >   simply allocated message buffers exactly msize large, even for
> > >   messages
> > >   that actually just needed few bytes. So these patches make sense by
> > >   themselves, independent of this overall series, however for this
> > >   series
> > >   even more, because the larger msize, the more this issue would have
> > >   hurt
> > >   otherwise.
> > 
> > Unless they got stuck somewhere the mails are missing patches 10 and 11,
> > one too many 0s to git send-email ?
> 
> nevermind, they just got in after 1h30... I thought it'd been 1h since
> the first mails because the first ones were already 50 mins late and I
> hadn't noticed! I wonder where they're stuck, that's the time
> lizzy.crudebyte.com received them and it filters earlier headers so
> probably between you and it?

Certainly an outbound SMTP greylisting delay, i.e. lack of karma. Sometimes my 
patches make it to lists after 3 hours. I haven't figured out though why some 
patches within the same series arrive significantly faster than certain other 
ones, which is especially weird when that happens not in order they were sent.

> ohwell.
> 
> > I'll do a quick review from github commit meanwhile
> 
> Looks good to me, I'll try to get some tcp/rdma testing done this
> weekend and stash them up to next

Great, thanks!

> --
> Dominique






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
