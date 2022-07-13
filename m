Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E20BC5731AF
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 10:57:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBYBF-0006Gf-G4; Wed, 13 Jul 2022 08:57:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oBYBD-0006GU-NG
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 08:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nu1POy7YkuNyZuJHgCV5LHCqiHV9ZZ729P8AmcVEC4E=; b=e0b73I58TelErdjaQ93jL0mrvq
 e8bdyMS/5VK0ygI5zvibM3+5FJS7MlhXt5SHDtRotLzbAiex7C94k5LoAsqrPL3vWSIcg/+q/EqyB
 tIKXyr47iBVYhQR5igcGa/rHbIb4Mwiahgf9J2nZ5c7cf1hoU2MvBPcZnl0AbpxZn/xA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nu1POy7YkuNyZuJHgCV5LHCqiHV9ZZ729P8AmcVEC4E=; b=AbeARykGcnPqiBxp7Im+A+clta
 hrLlhSxFpPXqb+dRsp5KaRGh4ct+h9Fv1uItFxbD3vv5QKR1MiVMIPydnsGayH1D2I4vwjuFxGN63
 H7ZTvmjkjrswigKb9z6QKQV2DlR2rKUO3jI3XoCyLR7eIAZ89KJ0Vqy4czZtRiI/6uSo=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBYB3-0007EP-O5
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 08:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=Nu1POy7YkuNyZuJHgCV5LHCqiHV9ZZ729P8AmcVEC4E=; b=muDkd3U1IcxZQCX+U/CQIBkpxt
 ZU+gG6hyVSQXeQI8qgawE6oaFo3/0+Yf09PRRHlTBuTr3WDJrpc41F1R3S5fsfpl3CUyBW+mtKdur
 f8BqCWCkPs5vWnF1ffZ+zv/iCehxrjyyGk5SbzQD/J1BgTRXVwb8QsuIK09DO9qM+K1wrmlY/8TJr
 mo9Pb/LKje7h2TpmjXXJhPdRd10jf6xB7KxTqe2TL0wDvDwfzXX+aKHNMkiXQevS2C9vLRHMl/X5U
 RufnnNoz2I/kVQtw3aYlQeHmKWbBm8DypgMi3WvHN9A5cQqnhjEB26ekFuramQJadpXZdAFwkjQRR
 Y2yRtupuX2IN3yDJgk4iwZ8Kmk9PlbBFaqBI+sVFazLWGBYVyBo9GXdA9E6vCkzgCLK7/6xqM3hsF
 jRKP8EAt2QwXVjcaqdxmujWBvdCQ/XG63ZQ1U2DYzx+NkpCV830tKiwC48Uq0+w/G/rA/XsbQiw+q
 cdtKFjRalgmH2DqPo4lUGFBAcP8m69KAZR2NNwm3Jd4nQHLhrSEjkB+S2L7rC+EOCqTWAr7FprKQb
 4RHcmhGXOyYGtKNcmC9DbJ7n2gnTjFdy4pN9uE4xUyhi2GmeRC5QrJyNSdS0uupIArgXayiRGvuUj
 bEdoQt08cq7VRGsTM19JZemXVMpmvxnFiup4glWLE=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 13 Jul 2022 10:54:47 +0200
Message-ID: <7468612.NupLhYsxyy@silver>
In-Reply-To: <Ys3j7KucZGdFkttA@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <Ys3j7KucZGdFkttA@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag, 12. Juli 2022 23:13:16 CEST Dominique Martinet
 wrote: > Alright; anything I didn't reply to looks good to me. > > Christian
 Schoenebeck wrote on Tue, Jul 12, 2022 at 04:35:54PM +0200: > > [...] 
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
X-Headers-End: 1oBYB3-0007EP-O5
Subject: Re: [V9fs-developer] [PATCH v5 00/11] remove msize limit in virtio
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

On Dienstag, 12. Juli 2022 23:13:16 CEST Dominique Martinet wrote:
> Alright; anything I didn't reply to looks good to me.
> 
> Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:35:54PM +0200:
> > OVERVIEW OF PATCHES:
> > 
> > * Patches 1..6 remove the msize limitation from the 'virtio' transport
> > 
> >   (i.e. the 9p 'virtio' transport itself actually supports >4MB now,
> >   tested
> >   successfully with an experimental QEMU version and some dirty 9p Linux
> >   client hacks up to msize=128MB).
> 
> I have no problem with this except for the small nitpicks I gave, but
> would be tempted to delay this part for one more cycle as it's really
> independant -- what do you think?

Yes, I would also postpone the virtio patches towards subsequent release 
cycle.

> > * Patch 7 limits msize for all transports to 4 MB for now as >4MB would
> > need> 
> >   more work on 9p client level (see commit log of patch 7 for details).
> > 
> > * Patches 8..11 tremendously reduce unnecessarily huge 9p message sizes
> > and
> > 
> >   therefore provide performance gain as well. So far, almost all 9p
> >   messages
> >   simply allocated message buffers exactly msize large, even for messages
> >   that actually just needed few bytes. So these patches make sense by
> >   themselves, independent of this overall series, however for this series
> >   even more, because the larger msize, the more this issue would have hurt
> >   otherwise.
> 
> time-wise we're getting close to the merge window already (probably in 2
> weeks), how confident are you in this?
> I can take patches 8..11 in -next now and probably find some time to
> test over next weekend, are we good?

Well, I have tested them thoroughly, but nevertheless IMO someone else than me 
should review patch 10 as well, and review whether the calculations for the 
individual message types are correct. That's a bit of spec dictionary lookup.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
