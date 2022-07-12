Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB80572843
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 23:12:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBNAz-0005Cm-Ds; Tue, 12 Jul 2022 21:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBNAx-0005Cc-67
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 21:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eiN+XhbOvX8WghrfI1OIJHzddrvBj7ZBjjDv3Q3CGk4=; b=IyQ5RZ1Brx0/+Jze0hV0RkUVPl
 VV6mDl63egd2eoMI+WiwYDADfFPexp73+kZppN37uJTcLp7kJ7Ih6n4vMwy02A69gC62qVCL2BKMq
 +XW4L9j43UE+BzLwk/rtDkmjvbakEcmfBb5TGGYfj0MpCKIqi4OxCRv6Blyo7azeT8Kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eiN+XhbOvX8WghrfI1OIJHzddrvBj7ZBjjDv3Q3CGk4=; b=BjxQIvfKwpI985bT2H7vfZqLsW
 tdPBDOpglxvbMQHItBEXgmXEsRNz0i9EeVvkXUhwtIDP4JHIscSjEZ4vcgbmI8DcTT7RJ9bKGtt7X
 Vl9HdHRPuLl6PfxxPD1cLhf8v6D3dhHsOBicSxTuFpig67DT/FsWJI2toelAnHnhVroA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBNAv-00F5kD-SZ
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 21:12:11 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 70985C009; Tue, 12 Jul 2022 23:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657660323; bh=eiN+XhbOvX8WghrfI1OIJHzddrvBj7ZBjjDv3Q3CGk4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EUZ32aVlw1e2tAzktlNuxLyX5X7B0FmXxoJ46QPUd+4bpVojHcKUQRxrD0j4Af2Jw
 RTO7MEoyUQL0qFx7eYDhzWa3BHvUcjGVoe2z53IppjBvEN0K9FdyLbzfmvPpvIRZcr
 uj6y/M2AYkeRYaOoBUNTbUz2Qvsh/WQw6h2ih7bOLijgP1v1CQs5Y+05LPuNm3Rs2c
 Icd2/LOVkGQh74GHI6hHz4fWfPBMQn9QdxKSNhyv1g7qw23o72SjGUiM1jifswSHVL
 PjDryJ2mDz2uP6XZrzoZx+CVl8ALGIoX9Tk7QHD7SHU5QZnv2fP5r64fBdWSfL5Hvh
 sSU7c63Y56/ng==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id B6C96C009;
 Tue, 12 Jul 2022 23:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657660322; bh=eiN+XhbOvX8WghrfI1OIJHzddrvBj7ZBjjDv3Q3CGk4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=whF+2hsQE5IlwguKvo69lZPFa4ZLhnyjqMZIdisEC8g3LQ6IyW+TiitL7m1wqEKlu
 t1Rc2Ybd6E6c8CTcAxWG6wkFcp5uItE1W8JTMtlnN1yJiHQe3XPhcgS7RXBRAUi0uT
 ijufJiLZT95CD4cBAu4fc2MLW5ABqaeAkgQMVbokubiSv7EU2v/4hRR99xKbg868RO
 XPLbH2NvOaKd2aii5tU6dgHXTDdpKZ5RmRqmd19v2D+QVFMTfpJMr77ekkLIenLl6P
 GlcOuoslEFMGyjxWrYlZ0YgedIkvQ5r8iznbvJpeq3cv6lCXPiWpvPcg1bYIvwwtsW
 4Ux4mGteDf3TQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0c84a27d;
 Tue, 12 Jul 2022 21:11:57 +0000 (UTC)
Date: Wed, 13 Jul 2022 06:11:42 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Ys3jjg52EIyITPua@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <5fb0bcc402e032cbc0779f428be5797cddfd291c.1657636554.git.linux_oss@crudebyte.com>
 <Ys3Mj+SgWLzhQGWK@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ys3Mj+SgWLzhQGWK@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Wed, Jul 13, 2022 at 04:33:35AM
 +0900: > Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:36PM +0200:
 > > So far 'msize' was simply used for all 9p message types, [...] 
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
X-Headers-End: 1oBNAv-00F5kD-SZ
Subject: Re: [V9fs-developer] [PATCH v5 11/11] net/9p: allocate appropriate
 reduced message buffers
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

Dominique Martinet wrote on Wed, Jul 13, 2022 at 04:33:35AM +0900:
> Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:36PM +0200:
> > So far 'msize' was simply used for all 9p message types, which is far
> > too much and slowed down performance tremendously with large values
> > for user configurable 'msize' option.
> > 
> > Let's stop this waste by using the new p9_msg_buf_size() function for
> > allocating more appropriate, smaller buffers according to what is
> > actually sent over the wire.
> > 
> > Only exception: RDMA transport is currently excluded from this, as
> > it would not cope with it. [1]

Thinking back on RDMA:
- vs. one or two buffers as discussed in another thread, rdma will still
require two buffers, we post the receive buffer before sending as we
could otherwise be raced (reply from server during the time it'd take to
recycle the send buffer)
In practice the recv buffers should act liks a fifo and we might be able
to post the buffer we're about to send for recv before sending it and it
shouldn't be overwritten until it's sent, but that doesn't look quite good.

- for this particular patch, we can still allocate smaller short buffers
for requests, so we should probably keep tsize to 0.
rsize there really isn't much we can do without a protocol change
though...

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
