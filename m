Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 780944DE7EF
	for <lists+v9fs-developer@lfdr.de>; Sat, 19 Mar 2022 13:46:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nVYT4-0003KB-5K; Sat, 19 Mar 2022 12:46:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <idryomov@gmail.com>) id 1nVYT3-0003Jy-4H
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Mar 2022 12:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOMGYmaATQC2z13UyvSGmscWZ1Ke2cRO2FHb2Uve4+c=; b=VH0tZ1785bkEy9SGjr7p/GMT8y
 3zrkk6zLCZ+CYaLzidNSPYRwaPfSYw2VcjVr3NFWK7SSj4vm/s3iptSyHDr14Dzae+Y9kjtkCAhAd
 MMb8izIsJbZwtwzczIHmDz/8VbkS1pDqltEVb4XsAUxelSPBQbThafSvLCTsR6++6XVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TOMGYmaATQC2z13UyvSGmscWZ1Ke2cRO2FHb2Uve4+c=; b=lGQr2WGzfA2XaZ7wGPxkUGi1OW
 ddjEvdEHNZjLXC2mJQTGXhwQUyOaC0tVqThe/Z8kfouaZtDvpIsqf8sl+XJGeDVD9TG6ZLFcb95fS
 651O/aXDCylubQuKyKQbihLmSQeWfdIkzOgOwSwAY8NMC4ZukDg8dEtUJ61zAc2oZfyw=;
Received: from mail-vk1-f182.google.com ([209.85.221.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVYT1-004AnY-1j
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Mar 2022 12:45:59 +0000
Received: by mail-vk1-f182.google.com with SMTP id d129so302024vkh.13
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 19 Mar 2022 05:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TOMGYmaATQC2z13UyvSGmscWZ1Ke2cRO2FHb2Uve4+c=;
 b=H2shOi2EAOzGFJtpVsRsTpiG5Kz4xpnCa3MGNiZBROxxo3CUttZA+GU/rsDYwAnB8z
 dytXpQzdTt3qZlJJCf6+4+e/zIg4HUNUo5eEVZFdVdSHPyAkEnmAhgi5IGeQREuJ4NdB
 GN0OMABVxth+oNA2qGjhdsSQ3LkZ8/exdo3KKeH27krMSI8x60bBzqa9jyapIAJ/ylwR
 0+oLyV42aPGla/O4dXdBp3OIpJus/ouddIfD0m1sXnee8w6NoaZj4CjeFMgQWbeeyYK2
 P8odlP1/iGxLJJZut0uI/haoY9GlsG+XSrRj2Y4oxOueyu8z+0BbHVA4s1qFF+AoxZUJ
 D8WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TOMGYmaATQC2z13UyvSGmscWZ1Ke2cRO2FHb2Uve4+c=;
 b=sW+y5NXk20Fcr+xhMWgbc5wmYNJOws6NrWkAfFQTxdNiYKaBlVqv6m2cWc6kye4q/w
 ypy40Mu+TLKq5o9cFJgVFxwA6Fzpr534o+bTCM5x/qLPHyJWylChSyIFvbJiHHLtwjA4
 nLSBgaKEEHJ/js/JeZXM1TpQjsGm4OHrbyUDSOUfIxrGVTfbpi7fL27tvXfF54exZzEE
 SkHXYKRX0FYU20JoXbro1/Ep3z7CDsUOUWk4NHQvUbP6Bvkf1YkOvXuU24QhPqR8irt3
 CDoPSt0XcQ5Og9F0LqCbodaTKN4aRQZHWZN3bME0Cld0fTAIyw9T5xVRVsg1ue9mBOZf
 aWgQ==
X-Gm-Message-State: AOAM533f9CO2lqt0nCRzXMoFJRCl+Xe++9ulm6iUNNmNS78qmkzqytLb
 2CrirrkkgIGLMq3rnij+mnjgPbyhHMVmJpQsQC8=
X-Google-Smtp-Source: ABdhPJxjG9+XKDL2nuKi2W+QM9BrUWAJzSd68nq9Al1JVaNMnKFacS0NNJmC0amrXWYex35MjoU0mITjbMjNi5r5L3E=
X-Received: by 2002:a05:6122:8c8:b0:32a:7010:c581 with SMTP id
 8-20020a05612208c800b0032a7010c581mr5241750vkg.32.1647693953310; Sat, 19 Mar
 2022 05:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <751829.1647648125@warthog.procyon.org.uk>
In-Reply-To: <751829.1647648125@warthog.procyon.org.uk>
From: Ilya Dryomov <idryomov@gmail.com>
Date: Sat, 19 Mar 2022 13:46:25 +0100
Message-ID: <CAOi1vP_sEj7i8YbbwJibbSG=BCVp4E9BAo=JF0aC79xBNC8wcA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Mar 19, 2022 at 1:02 AM David Howells wrote: > > Hi
 Ilya, > > Since my fscache-next branch[1] is dependent on patches in the
 ceph/master > branch, I think I need to coordinate my netfslib pu [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [idryomov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.182 listed in list.dnswl.org]
X-Headers-End: 1nVYT1-004AnY-1j
Subject: Re: [V9fs-developer] Coordinating netfslib pull request with the
 ceph pull request
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-cachefs@redhat.com, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Ceph Development <ceph-devel@vger.kernel.org>, Xiubo Li <xiubli@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Mar 19, 2022 at 1:02 AM David Howells <dhowells@redhat.com> wrote:
>
> Hi Ilya,
>
> Since my fscache-next branch[1] is dependent on patches in the ceph/master
> branch, I think I need to coordinate my netfslib pull request with your ceph
> pull request for the upcoming merge window.
>
> David
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-next
>

Hi David,

Given how your branch is structured, it sounds like the easiest would
be for you to send the netfslib pull request after I send the ceph pull
request.  Or do you have some tighter coordination in mind?

Thanks,

                Ilya


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
