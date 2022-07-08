Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED14156AF76
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 02:45:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9c7F-000321-OV; Fri, 08 Jul 2022 00:45:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1o9c7E-00031v-0s
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 00:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B5xNdFz6XXTERh5Aut7dDjHBESEjOvbDt1VCQwJTjjM=; b=ZYsgUyIiSP4tUUdHiPGVX/laQs
 9CYv8y0K46UIX/C+qaWaDQMkAlcUsFmQWCurSAzCnBOZe7fIY+PCz+Xu/i9ZO5fXAIS7rn9IBeCr1
 BFWOGrMIc1rlpGrBUjvosryd5TeLIhLUh5rsM+yTjkT3qZ/hVi6snx1FWEGa1bcjd5Hc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B5xNdFz6XXTERh5Aut7dDjHBESEjOvbDt1VCQwJTjjM=; b=OUCEdf+zaTCm+Zq4d1deTu7CYp
 PdIxHyfC16DwgH9D1ZBg/ITsr2CUrbnLF8XP16e8Csub7ABppy+Q0BOXRxWGb5mIqN4hqBX9b5fCF
 9UqvQZqU5atuJEAqz+E3V3hHBxPLp1BTfQceYSMWkyjOJWIv00LpXV8ftKvLnWoBBmw4=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o9c7C-0002wR-Vm
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 00:45:04 +0000
Received: by mail-oi1-f174.google.com with SMTP id u9so25287092oiv.12
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Jul 2022 17:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B5xNdFz6XXTERh5Aut7dDjHBESEjOvbDt1VCQwJTjjM=;
 b=WMtHWj4hRtqduESyTn0GpbQCjRgBt4qwXuIqOlnwpnm3p6fAmj0Z1P/SXnKI/8yvz/
 5GThfdiGpyY+kecGCchVHLMDU36UXBB0JAZ7RrvCaJ75yPPS/7GuHmmESp62tk7K/xdD
 TSRTtjOK08VXEO/q3GtikQxso3AobccFHjdlNKp2XuF6gQm7mKsUcxQmWxMF/Bnh1YrX
 eqHcXPF9QDhVQC7E0MJWc3K4zb+Iu7F7HeeO0d+1Ha/x3xeCbs+jSJcl2h6hMoCE+Q8w
 915gTztOfHVwQ9XvccT28RNCXV6lQPEYY4O3Nk2BE0pvo4/FUhEU2XQPOHgBeZTo3mTF
 2U4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B5xNdFz6XXTERh5Aut7dDjHBESEjOvbDt1VCQwJTjjM=;
 b=Ei2yRaRpu0pV+rQ8Zz1ogQjuUvVL70yP8A56Aif6blgG/SBGi8SHPabaAyZrkOrbVy
 RELRfO3Agz1S1BVsG/NzNx0L4NWKHv0NicPuZxwN7U3QgLcoTIEXDsJJxbalGWvWR9sg
 S161mWqRXEgJVdlx8AfxakM6P2f8WuGmw6ah8rje7J/179LMg8HqsI686rcbXEszUchc
 hZsMtkyKQ/cuN93X1p6or49lGnOyQPORv0eBdn6TlGpGbwnIbmTyNFIwP/gH4oTnXhHL
 gd1wKA0Lz8hLCs2yksmJHDr8w37hAHdaZ0UQKlfWE0Izi664+9DeuQ0rPJw8zYNnqiL8
 wIAw==
X-Gm-Message-State: AJIora9/OM9DF/tOrU14NfRtbZl4p5def/5s9LTkQmqvcd91Ja1XuGeZ
 wH2cXqSFRWZFnQrucxR0Sp5cGjj73F43IVsGQIGaTFuWI+k=
X-Google-Smtp-Source: AGRyM1siW8pRapfct96bpF65QPFYpvrG3yVKSY9s2tD6SLb9S0uWvLcGV6fBcj7n3It6YTBVbfeFLlG66V3Z4CJlcxM=
X-Received: by 2002:a05:6808:120a:b0:333:54f1:351 with SMTP id
 a10-20020a056808120a00b0033354f10351mr409480oil.70.1657241097025; Thu, 07 Jul
 2022 17:44:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <7534209.h2h7kyIpJd@silver>
In-Reply-To: <7534209.h2h7kyIpJd@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 8 Jul 2022 10:44:45 +1000
Message-ID: <CAFkjPT=GAoViYd0E7CZQDq3ZjhmYT0DsBytfZXnE10JL0P8O-Q@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: there are other 9p virtio servers - several emulation
 platforms
 support it sans qemu. On Fri, Jul 8, 2022 at 12:31 AM Christian Schoenebeck
 < wrote: > On Donnerstag, 30. Dezember 2021 14:23:18 CEST Christian Schoenebeck
 wrote: > > This series aims to get get rid of the current 500k 'msize'
 limitation
 in > > the 9p virtio transport, which is curren [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o9c7C-0002wR-Vm
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

there are other 9p virtio servers - several emulation platforms support it
sans qemu.

On Fri, Jul 8, 2022 at 12:31 AM Christian Schoenebeck <
linux_oss@crudebyte.com> wrote:

> On Donnerstag, 30. Dezember 2021 14:23:18 CEST Christian Schoenebeck wrote:
> > This series aims to get get rid of the current 500k 'msize' limitation in
> > the 9p virtio transport, which is currently a bottleneck for performance
> > of 9p mounts.
> [...]
> > KNOWN LIMITATION:
> >
> > With this series applied I can run
> >
> >   QEMU host <-> 9P virtio <-> Linux guest
> >
> > with up to slightly below 4 MB msize [4186112 = (1024-2) * 4096]. If I
> try
> > to run it with exactly 4 MB (4194304) it currently hits a limitation on
> > QEMU side:
> >
> >   qemu-system-x86_64: virtio: too many write descriptors in indirect
> table
> >
> > That's because QEMU currently has a hard coded limit of max. 1024 virtio
> > descriptors per vring slot (i.e. per virtio message), see to do (1.)
> below.
> >
> >
> > STILL TO DO:
> >
> >   1. Negotiating virtio "Queue Indirect Size" (MANDATORY):
> >
> >     The QEMU issue described above must be addressed by negotiating the
> >     maximum length of virtio indirect descriptor tables on virtio device
> >     initialization. This would not only avoid the QEMU error above, but
> >     would also allow msize of >4MB in future. Before that change can be
> done
> >     on Linux and QEMU sides though, it first requires a change to the
> virtio
> >     specs. Work on that on the virtio specs is in progress:
> >
> >     https://github.com/oasis-tcs/virtio-spec/issues/122
> >
> >     This is not really an issue for testing this series. Just stick to
> max.
> >     msize=4186112 as described above and you will be fine. However for
> the
> >     final PR this should obviously be addressed in a clean way.
>
> As there is no progress on virtio spec side in sight, I'm considering to
> handle this issue in upcoming v5 by simply assuming (hard coding) that 9p
> server supports exactly up to 1024 virtio descriptors (memory segments)
> per
> round trip message. That's maybe a bit unclean, but that's what other
> virtio
> drivers in the Linux kernel do for many years as well, so I am not
> expecting a
> negative issue in practice.
>
> And I mean, when we talk about 9p + virtio, that actually implies QEMU
> being
> the 9p server, right? At least I am not aware of another 9p server
> implementation supporting virtio transport (nor any QEMU version that ever
> supported less than 1024 virtio descriptors). Maybe Microsoft WSL? Not
> sure.
>
> Best regards,
> Christian Schoenebeck
>
>
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
