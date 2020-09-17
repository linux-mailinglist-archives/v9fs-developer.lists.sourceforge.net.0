Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 626BE26D86F
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 12:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=epPCJBawcuc3SHfcwoU+vf4IWIrxLAggCvN7Ltd27eo=; b=YHnLSeK90mpNfEBsNqOKXZT+i
	G9hnHAypDzjrBpOdOaTwtlc5NZ32aZogJubM01bA+DD8FVVod7xHo4SF8vagBpri+LOtO+AnHDzsN
	ACTEP7PotkK7pCtHG07SDFbM6ZJ2TzqVQ8RHsQTplruDJID7WK+LSMK/vYjybTvjIOe2o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kIqpu-0001xF-Ha; Thu, 17 Sep 2020 10:08:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1kIqps-0001wq-5A
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 10:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XLwyjyrxqdv/odAe618s6NJTVoSCd7gxAmFBuvC2SXQ=; b=kVFYdsLyt+Kdg1iN6nX/HDkVwo
 Khhp1f7pzhlN/nqzisBrf/YdXzeT0TV/JrY7tDtXaiAOo9EwI504cPRTuIGCid1nacM2Ch/Nu/fFM
 P76krTlvEPDaNB29jz1qiTnniU5TY28PVTKCWnuu+pa+xu9Zopo4JHDdJ6qFiiO5woqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XLwyjyrxqdv/odAe618s6NJTVoSCd7gxAmFBuvC2SXQ=; b=cwwo1PD8OSgp27Bd/0zLQDTomm
 PC0dOaUqCU80gfC4xIpxPO+jI6EKdy+JNJ3j8pjOE4hHIAYO3wS/tLf3XxrVCkcrNBF3ePb45G/ok
 98IcPOiVuVmr2aRP9RmFetuphC1REtISi3bPPBMa05mRIvmaP3tBHPO7L0oHNzskiz0s=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kIqpk-00CpeT-9l
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 10:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=XLwyjyrxqdv/odAe618s6NJTVoSCd7gxAmFBuvC2SXQ=; b=pn+1IAk4kYKoI7SK8u7p6HYcg/
 Ar9FJRiJ0HVgmUE26zkpE0Z2QWH76ROWtN9EIUW/MiluYs6iOx2xBTVhLy4MakUxDv1WqesGUV3xN
 FSh7rNZBMKqsCPQVEWaIbC+nv5B5lkdVJTc294spr8HqlcK4WrNFR2Yw2FEslQ9+9r7LpMFZaxrBu
 noV9k9gFI4WhCfT1Pzf9S6ISn7hxm4ZSVUhqw0uB+ifCW7wwBmdKsLwZdozTGOD0zrQHNFy0uRWcc
 bhLQE79C6jol13wh3s8wHWXEY6mLhNnP9lXmcO15pGczpGp7xP6AiGKlcjzPvcaYJKEihpK83bGAB
 l6PVUVo/XgQ4BmzgDTTfQZ8UicTmUnrP8hMyWhI2qJtt2p9yv66hC7RadSyKb+JNKSQdYZFZN4O1j
 G/ys5hiW68Mp6wtqa3dWpGqnpVu559tfULZlVJ98PLPwSlD2jlsHE+5wDgPJGFFpZ7A5d7ktYlHPn
 BuBHldPSWWMWnEa0NI8QvHI7ZHvNI6VB/GEa5jJvC2uqSE37IE94YFjUM2VFTAgW+ZrgYGvds91Uz
 hAnvHTo5mXgZ2u2pTuxdD4Tkb/NhUwWODE5svl2XMuCmCwVJj5h+arhi6A6Fw7gbSTF+GKEt8WS8l
 Ms/U2HH12lPMXFD8Y7MLEJkXNSK+D+ZfVL7JnjjlA=;
To: Greg Kurz <groug@kaod.org>
Date: Thu, 17 Sep 2020 12:07:52 +0200
Message-ID: <1994640.yx8tjih9BC@silver>
In-Reply-To: <20200916141621.5de7d397@bahia.lan>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914174630.195e816f@bahia.lan> <20200916141621.5de7d397@bahia.lan>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kIqpk-00CpeT-9l
Subject: Re: [V9fs-developer] [PATCH RFC 0/4] 9p: fix open-unlink-f*syscall
 bug
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
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 16. September 2020 14:16:21 CEST Greg Kurz wrote:
> On Mon, 14 Sep 2020 17:46:30 +0200
> 
> Greg Kurz <groug@kaod.org> wrote:
> > On Mon, 14 Sep 2020 17:19:20 +0200
> > 
> > Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:
> > > On Montag, 14. September 2020 14:43:25 CEST Greg Kurz wrote:
> > > > > So yes, looks like this also requires changes to the 9pfs 'local' fs
> > > > > driver on QEMU side:
> > > > > https://lists.nongnu.org/archive/html/qemu-devel/2016-06/msg07586.ht
> > > > > ml
> > > > > 
> > > > > Eric, Greg, would there be an easy way to establish QEMU test cases
> > > > > running
> > > > > the 9pfs 'local' fs driver? Right now we only have 9pfs qtest cases
> > > > > for
> > > > > QEMU which can only use the 'synth' driver, which is not helpful for
> > > > > such
> > > > > kind of issues.
> > > > 
> > > > I guess it's possible to introduce new qtests that start QEMU with
> > > > -fsdev local instead of -fsdev synth... I haven't looked in a while
> > > > though, so I won't comment on "easy way" ;-)
> > > 
> > > Makes sense, and I considered that approach as well.
> > > 
> > > The question is the following: is there a QEMU policy about test cases
> > > that
> > > create/write/read/delete *real* files? I.e. should those test files be
> > > written to a certain location, and are there measures of sandboxing
> > > required?> 
> > I don't know. You'll need to figure out by yourself, reading code from
> > other tests or asking on IRC.
> 
> Maybe Thomas (added in Cc) can give some hints on how test cases should
> handle creation/deletion of real files ?

Got this QEMU policy issue clarified on qemu-devel in the meantime.

Back on topic: I can lay the ground on QEMU side by establishing a test suite 
for the 9p 'local' driver, including one test case ready to pass for this 
particular unlinked-I/O bug discussed here.

But to be clear: since the proposed patch set is a non-trivial and old one 
(2016), I currently don't have plans to handle the actual bug fix patches by 
myself. So if anyone wants this unlinked issue to be fixed on QEMU side, 
please dedust that patch set and send a v2 the common way to qemu-devel ML for 
further review, and actually test them!

So if anybody wants to do that, let me know, so that I would prepare the test 
suite in the meantime.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
