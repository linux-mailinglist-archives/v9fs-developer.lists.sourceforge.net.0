Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D51457DAA
	for <lists+v9fs-developer@lfdr.de>; Sat, 20 Nov 2021 12:45:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1moOoe-0001I5-1v; Sat, 20 Nov 2021 11:45:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nikolay@oldum.net>) id 1moOob-0001Hy-Lw
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 11:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zWwej0KBTwSJvlkBzzEbwxRYrkC2zYWSfwtgNI5KcNM=; b=SIk4SjEgMJiDISgfeg63v2KuaJ
 UtYFlLolVADDfwyP7r5qxYHAb8+ClXBuUjjTsuQj3XUVXEgPMWGbGxkHxPbiQ3F+ZhAzrXhYAIKWC
 Y3LY5ATXAuxzFTsEstxNyrRpLM5g+BP6Wr8vdIOQBhgXA0RrUg4mkKoBMpE5ty/K6z90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zWwej0KBTwSJvlkBzzEbwxRYrkC2zYWSfwtgNI5KcNM=; b=ktjSRLYIk0elKL6xFd0Anpjv3m
 Yaqlw3Y/588yPT6Vim1H8rZE/vtaah02mUgbCeGszkwpTxxljBk7wK/mY2ncidCWXu/DkUTiv5TI/
 JilPqzyQcIhpUubyvv2TVqKLeWhY2r/q0U3ntV3hqFO7P6QeVdXlQeTiuYYGl0WPQ1vQ=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1moOoW-002HD0-IJ
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 11:45:53 +0000
Received: by mail-lf1-f44.google.com with SMTP id b40so56187223lfv.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 20 Nov 2021 03:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oldum-net.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=zWwej0KBTwSJvlkBzzEbwxRYrkC2zYWSfwtgNI5KcNM=;
 b=lfQwtwyU1ZkE78mY6Zj16UrGC/BoMt1g5MpD908HoL/nek4hvYUpnjL2OJ31CJRuGJ
 4JEfoEno3XwznOhpCRbHbfSeoH1QCHxCbFQWMRfxbV7K61806keOrZ03sFnO6PvsBl5y
 MNt+04O6Px9X3tyLjg7TrlNIigz6KQaeWZFZXfTPzdUR/Ev3v1/6lF1vFIT8628N5H50
 JT+5Tv3k5PQcMGULdxGrDL3lqUxzp3FkfXNOAth9/e0KZbf5OAacXQRiEQi7/nLA43ha
 1L5nplHtxBl4xkhd/s/mYSi3xUa9hj0TgJ/otTZZyLY9ylmDbYY+XoRGnkqIHLw04bzF
 hbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=zWwej0KBTwSJvlkBzzEbwxRYrkC2zYWSfwtgNI5KcNM=;
 b=0y11AkHPXw3ydOepOexJt/USyGQzRJMhsgnQp9DBq4R4YRlPspij5zMrOn6kpiOaPZ
 BZd+H0JIWMeeFHm8zssMsDMswS3I2e9QmjUKlyhnuSIj/PbGO93aiBfaHhPRVvvaDz2M
 cHqH8GIMWSduqHIINBUCf9vHAHRm/VdrIgKErlw9PRvik2G1jXayyu8k3G/uDo+9Yll+
 EbQkV7L3fVwGIqQZm3pr+HE0IMoi7w0YzlhXItu13eC4qXSUpMmXsYuKm8l73D05g8uv
 8qanooglRz2S58KWPue4CUKnHLhFzWHYtG1LkwXFxfpXubx6hQukVcLG1KJNeMpN64+Y
 PiTg==
X-Gm-Message-State: AOAM530005Qf+DkL/1otZn8kNMcb8jFR1hbW2JPDwssxJz1TzGkow7T2
 UJcfghxxsUTsv+sWLnOgwKXp+R/aOTjiKWG/wQo=
X-Google-Smtp-Source: ABdhPJxLKjVWRV6VJaQUJfcVh1shMp63txOw93gk5yR31eg4d94pdj2ZizNlC2FgjHe75uk8gS9yQQ==
X-Received: by 2002:a17:907:1c0a:: with SMTP id
 nc10mr18312537ejc.211.1637407216448; 
 Sat, 20 Nov 2021 03:20:16 -0800 (PST)
Received: from [10.1.0.200] (external.oldum.net. [82.161.240.76])
 by smtp.googlemail.com with ESMTPSA id z25sm1039552ejd.80.2021.11.20.03.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Nov 2021 03:20:15 -0800 (PST)
Message-ID: <cef6a6c6f8313a609ef104cc64ee6cf9d0ed6adb.camel@oldum.net>
From: Nikolay Kichukov <nikolay@oldum.net>
To: Christian Schoenebeck <linux_oss@crudebyte.com>, 
 v9fs-developer@lists.sourceforge.net
Date: Sat, 20 Nov 2021 12:20:35 +0100
In-Reply-To: <8119d4d93a39758075bb83730dcb571f5d071af6.1632327421.git.linux_oss@crudebyte.com>
References: <cover.1632327421.git.linux_oss@crudebyte.com>
 <8119d4d93a39758075bb83730dcb571f5d071af6.1632327421.git.linux_oss@crudebyte.com>
Content-Type: multipart/mixed; boundary="=-2/+iitcN5ZmKXaQ8auzP"
User-Agent: Evolution 3.42.1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks for the patches and sorry for top-posting. I've tested
 them on GNU/Gentoo Linux, kernel 5.15.3 on amd64 architecture on both guest
 and KVM host. The patches from this series, v3 have been applied to the host
 kernel and also to the guest kernel. Guest kernel is clang compiled and host
 kernel is compiled with gcc-11. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1moOoW-002HD0-IJ
Subject: Re: [V9fs-developer] [PATCH v3 6/7] 9p/trans_virtio: support larger
 msize values
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 Vivek Goyal <vgoyal@redhat.com>
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


--=-2/+iitcN5ZmKXaQ8auzP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Thanks for the patches and sorry for top-posting.

I've tested them on GNU/Gentoo Linux, kernel 5.15.3 on amd64
architecture on both guest and KVM host.

The patches from this series, v3 have been applied to the host kernel
and also to the guest kernel. Guest kernel is clang compiled and host
kernel is compiled with gcc-11.

The host also received the qemu patches:
https://github.com/cschoenebeck/qemu/commit/04a7f9e55e0930b87805f7c97851eea4610e78fc
https://github.com/cschoenebeck/qemu/commit/b565bccb00afe8b73d529bbc3a38682996dac5c7
https://github.com/cschoenebeck/qemu/commit/669ced09b3b6070d478acce51810591b78ab0ccd

Qemu version on the host is 6.0.0-r54.

When the client mounts the share via virtio, requested msize is:
10485760 or 104857600

however the mount succeeds with:
msize=507904 in the end as per the /proc filesystem. This is less than
the previous maximum value.

However, performance-wise, I do see an improvement in throughput,
perhaps related to the qemu patches or some combination.

In addition to the above, when the kernel on the guest boots and loads
9pfs support, the attached memory allocation failure trace is generated.

Is anyone else seeing similar and was anybody able to get msize set to
10MB via virtio protocol with these patches?

Thank you,
-Nikolay

On Wed, 2021-09-22 at 18:00 +0200, Christian Schoenebeck wrote:
> The virtio transport supports by default a 9p 'msize' of up to
> approximately 500 kB. This patch adds support for larger 'msize'
> values by resizing the amount of scatter/gather lists if required.
> 
> Signed-off-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> ---
>  net/9p/trans_virtio.c | 61 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
> 
> diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
> index e478a34326f1..147ebf647a95 100644
> --- a/net/9p/trans_virtio.c
> +++ b/net/9p/trans_virtio.c
> @@ -203,6 +203,31 @@ static struct virtqueue_sg *vq_sg_alloc(unsigned
> int nsgl)
>         return vq_sg;
>  }
>  
> +/**
> + * vq_sg_resize - resize passed virtqueue scatter/gather lists to the
> passed
> + * amount of lists
> + * @_vq_sg: scatter/gather lists to be resized
> + * @nsgl: new amount of scatter/gather lists
> + */
> +static int vq_sg_resize(struct virtqueue_sg **_vq_sg, unsigned int
> nsgl)
> +{
> +       struct virtqueue_sg *vq_sg;
> +
> +       BUG_ON(!_vq_sg || !nsgl);
> +       vq_sg = *_vq_sg;
> +       if (vq_sg->nsgl == nsgl)
> +               return 0;
> +
> +       /* lazy resize implementation for now */
> +       vq_sg = vq_sg_alloc(nsgl);
> +       if (!vq_sg)
> +               return -ENOMEM;
> +
> +       kfree(*_vq_sg);
> +       *_vq_sg = vq_sg;
> +       return 0;
> +}
> +
>  /**
>   * p9_virtio_close - reclaim resources of a channel
>   * @client: client instance
> @@ -774,6 +799,10 @@ p9_virtio_create(struct p9_client *client, const
> char *devname, char *args)
>         struct virtio_chan *chan;
>         int ret = -ENOENT;
>         int found = 0;
> +#if !defined(CONFIG_ARCH_NO_SG_CHAIN)
> +       size_t npages;
> +       size_t nsgl;
> +#endif
>  
>         if (devname == NULL)
>                 return -EINVAL;
> @@ -796,6 +825,38 @@ p9_virtio_create(struct p9_client *client, const
> char *devname, char *args)
>                 return ret;
>         }
>  
> +       /*
> +        * if user supplied an 'msize' option that's larger than what
> this
> +        * transport supports by default, then try to allocate more sg
> lists
> +        */
> +       if (client->msize > client->trans_maxsize) {
> +#ifdef CONFIG_ARCH_NO_SG_CHAIN
> +               pr_info("limiting 'msize' to %d because architecture
> does not "
> +                       "support chained scatter gather lists\n",
> +                       client->trans_maxsize);
> +#else
> +               npages = DIV_ROUND_UP(client->msize, PAGE_SIZE);
> +               if (npages > chan->p9_max_pages) {
> +                       npages = chan->p9_max_pages;
> +                       pr_info("limiting 'msize' as it would exceed the
> max. "
> +                               "of %lu pages allowed on this system\n",
> +                               chan->p9_max_pages);
> +               }
> +               nsgl = DIV_ROUND_UP(npages, SG_USER_PAGES_PER_LIST);
> +               if (nsgl > chan->vq_sg->nsgl) {
> +                       /*
> +                        * if resize fails, no big deal, then just
> +                        * continue with default msize instead
> +                        */
> +                       if (!vq_sg_resize(&chan->vq_sg, nsgl)) {
> +                               client->trans_maxsize =
> +                                       PAGE_SIZE *
> +                                       ((nsgl * SG_USER_PAGES_PER_LIST)
> - 3);
> +                       }
> +               }
> +#endif /* CONFIG_ARCH_NO_SG_CHAIN */
> +       }
> +
>         client->trans = (void *)chan;
>         client->status = Connected;
>         chan->client = client;


--=-2/+iitcN5ZmKXaQ8auzP
Content-Disposition: attachment; filename="9p-msize.txt"
Content-Transfer-Encoding: base64
Content-Type: text/plain; name="9p-msize.txt"; charset="UTF-8"

WyAgICAxLjUyNzk4MV0gOXA6IEluc3RhbGxpbmcgdjlmcyA5cDIwMDAgZmlsZSBzeXN0ZW0gc3Vw
cG9ydApbICAgIDEuNTI4MTczXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0K
WyAgICAxLjUyODE3NF0gV0FSTklORzogQ1BVOiAxIFBJRDogNzkxIGF0IG1tL3BhZ2VfYWxsb2Mu
Yzo1MzU2IF9fYWxsb2NfcGFnZXMrMHgxZWQvMHgyOTAKWyAgICAxLjUyODE3OV0gTW9kdWxlcyBs
aW5rZWQgaW46IDlwIDlwbmV0X3ZpcnRpbyB2aXJ0aW9fbmV0IG5ldF9mYWlsb3ZlciBmYWlsb3Zl
ciB2aXJ0aW9fY29uc29sZSA5cG5ldCB2aXJ0aW9fYmFsbG9vbiBlZml2YXJmcwpbICAgIDEuNTI4
MTgyXSBDUFU6IDEgUElEOiA3OTEgQ29tbTogbW91bnQgTm90IHRhaW50ZWQgNS4xNS4zLWdlbnRv
by14ODZfNjQgIzEKWyAgICAxLjUyODE4NF0gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQ
QyAoUTM1ICsgSUNIOSwgMjAwOSksIEJJT1MgMC4wLjAgMDIvMDYvMjAxNQpbICAgIDEuNTI4MTg1
XSBSSVA6IDAwMTA6X19hbGxvY19wYWdlcysweDFlZC8weDI5MApbICAgIDEuNTI4MTg3XSBDb2Rl
OiBlZiA0NCA4OSBmNiBlOCAzNCAxMyAwMCAwMCAzMSBlZCBlOSA1YiBmZiBmZiBmZiA4MSBlMyAz
ZiBmZiBmZiBmZiA4OSBkOSA4OSBjYiA4MyBlMyBmNyBhOSAwMCAwMCAwMCAxMCAwZiA0NCBkOSBl
OSA2NCBmZSBmZiBmZiA8MGY+IDBiIDMxIGVkIGU5IDQyIGZmIGZmIGZmIDQxIDg5IGRmIDY1IDhi
IDA1IDA4IDY1IDlmIDY5IDQxIDgxIGNmClsgICAgMS41MjgxODhdIFJTUDogMDAxODpmZmZmYjY2
NjQwNTAzOWU4IEVGTEFHUzogMDAwMTAyNDYKWyAgICAxLjUyODE4OV0gUkFYOiBjNDkxMjU5MzQ5
ZjNlZjAwIFJCWDogMDAwMDAwMDAwMDA0MGM0MCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDAKWyAgICAx
LjUyODE5MF0gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSTogMDAwMDAwMDAwMDAwMDAwYyBSREk6
IDAwMDAwMDAwMDAwNDBjNDAKWyAgICAxLjUyODE5MV0gUkJQOiAwMDAwMDAwMDAwMDAwMDBjIFIw
ODogMDAwMDAwMDAwMDAwMDA5MCBSMDk6IGZmZmZmYTNjYzAxMTE2NDAKWyAgICAxLjUyODE5Ml0g
UjEwOiAwMDAwMDAwMDAwMDAwMDAxIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IDAwMDAwMDAw
MDAwMDBjNDAKWyAgICAxLjUyODE5Ml0gUjEzOiBmZmZmOWZjOTQ0NDU5Yzg4IFIxNDogMDAwMDAw
MDAwMDAwMDAwYyBSMTU6IDAwMDAwMDAwMDAwMDBjNDAKWyAgICAxLjUyODE5NF0gRlM6ICAwMDAw
N2ZmNjIwZTU3NzQwKDAwMDApIEdTOmZmZmY5ZmM5YmJjNDAwMDAoMDAwMCkga25sR1M6MDAwMDAw
MDAwMDAwMDAwMApbICAgIDEuNTI4MTk1XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1Iw
OiAwMDAwMDAwMDgwMDUwMDMzClsgICAgMS41MjgxOTZdIENSMjogMDAwMDdmY2ZjMTRlODAwMCBD
UjM6IDAwMDAwMDAwMDMzNTgwMDAgQ1I0OiAwMDAwMDAwMDAwMzUwZWEwClsgICAgMS41MjgxOThd
IENhbGwgVHJhY2U6ClsgICAgMS41MjgyMDFdICA8VEFTSz4KWyAgICAxLjUyODIwMl0gIGttYWxs
b2Nfb3JkZXIrMHgzOS8weGYwClsgICAgMS41MjgyMDRdICBrbWFsbG9jX29yZGVyX3RyYWNlKzB4
MTMvMHg3MApbICAgIDEuNTI4MjA1XSAgX19rbWFsbG9jKzB4MWZjLzB4MmIwClsgICAgMS41Mjgy
MDhdICBwOV9mY2FsbF9pbml0KzB4M2QvMHg2MCBbOXBuZXRdClsgICAgMS41MjgyMTBdICBwOV9j
bGllbnRfcHJlcGFyZV9yZXErMHg4Mi8weDJiMCBbOXBuZXRdClsgICAgMS41MjgyMTJdICBwOV9j
bGllbnRfcnBjKzB4ODAvMHgzNTAgWzlwbmV0XQpbICAgIDEuNTI4MjE0XSAgPyBwOV92aXJ0aW9f
Y3JlYXRlKzB4MjUzLzB4MmIwIFs5cG5ldF92aXJ0aW9dClsgICAgMS41MjgyMTZdICA/IGtmcmVl
KzB4MjYwLzB4MzUwClsgICAgMS41MjgyMTddICBwOV9jbGllbnRfdmVyc2lvbisweDYwLzB4MWQw
IFs5cG5ldF0KWyAgICAxLjUyODIxOV0gIHA5X2NsaWVudF9jcmVhdGUrMHgzYjQvMHg0NjAgWzlw
bmV0XQpbICAgIDEuNTI4MjIxXSAgdjlmc19zZXNzaW9uX2luaXQrMHhhYi8weDc2MCBbOXBdClsg
ICAgMS41MjgyMjJdICA/IHVzZXJfcGF0aF9hdF9lbXB0eSsweDdiLzB4OTAKWyAgICAxLjUyODIy
NF0gID8ga21lbV9jYWNoZV9hbGxvY190cmFjZSsweDE4OC8weDI2MApbICAgIDEuNTI4MjI2XSAg
djlmc19tb3VudCsweDQzLzB4MmQwIFs5cF0KWyAgICAxLjUyODIyN10gIGxlZ2FjeV9nZXRfdHJl
ZS5sbHZtLjYxMjM3Nzk4MzM3NDY2NTYyMCsweDIyLzB4NDAKWyAgICAxLjUyODIzMF0gIHZmc19n
ZXRfdHJlZSsweDIxLzB4YjAKWyAgICAxLjUyODIzMl0gIHBhdGhfbW91bnQrMHg3MGQvMHhjZDAK
WyAgICAxLjUyODIzNF0gIF9feDY0X3N5c19tb3VudCsweDE0OC8weDFjMApbICAgIDEuNTI4MjM2
XSAgZG9fc3lzY2FsbF82NCsweDRhLzB4YjAKWyAgICAxLjUyODIzOF0gIGVudHJ5X1NZU0NBTExf
NjRfYWZ0ZXJfaHdmcmFtZSsweDQ0LzB4YWUKWyAgICAxLjUyODI0MF0gUklQOiAwMDMzOjB4N2Zm
NjIwZjkyZDVhClsgICAgMS41MjgyNDFdIENvZGU6IDQ4IDhiIDBkIDExIGMxIDBiIDAwIGY3IGQ4
IDY0IDg5IDAxIDQ4IDgzIGM4IGZmIGMzIDY2IDJlIDBmIDFmIDg0IDAwIDAwIDAwIDAwIDAwIDBm
IDFmIDQ0IDAwIDAwIDQ5IDg5IGNhIGI4IGE1IDAwIDAwIDAwIDBmIDA1IDw0OD4gM2QgMDEgZjAg
ZmYgZmYgNzMgMDEgYzMgNDggOGIgMGQgZGUgYzAgMGIgMDAgZjcgZDggNjQgODkgMDEgNDgKWyAg
ICAxLjUyODI0Ml0gUlNQOiAwMDJiOjAwMDA3ZmZlNDY3NWY5ZjggRUZMQUdTOiAwMDAwMDI0NiBP
UklHX1JBWDogMDAwMDAwMDAwMDAwMDBhNQpbICAgIDEuNTI4MjQ0XSBSQVg6IGZmZmZmZmZmZmZm
ZmZmZGEgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJDWDogMDAwMDdmZjYyMGY5MmQ1YQpbICAgIDEu
NTI4MjQ0XSBSRFg6IDAwMDAwMDAwMDA1NDFmOTAgUlNJOiAwMDAwMDAwMDAwNTQxZjQwIFJESTog
MDAwMDAwMDAwMDU0MWYyMApbICAgIDEuNTI4MjQ1XSBSQlA6IDAwMDAwMDAwMDAwMDBjMDAgUjA4
OiAwMDAwMDAwMDAwNTQyMWYwIFIwOTogMDAwMDdmZmU0Njc1ZTc5MApbICAgIDEuNTI4MjQ2XSBS
MTA6IDAwMDAwMDAwMDAwMDBjMDAgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAwMDAwMDAw
MDUzZDRmMApbICAgIDEuNTI4MjQ2XSBSMTM6IDAwMDAwMDAwMDA1NDFmMjAgUjE0OiAwMDAwMDAw
MDAwNTQxZjkwIFIxNTogMDAwMDdmZjYyMTA5ZGNmNApbICAgIDEuNTI4MjQ3XSAgPC9UQVNLPgpb
ICAgIDEuNTI4MjQ4XSAtLS1bIGVuZCB0cmFjZSA4NGYwNWIyYWEzNWYxOWIzIF0tLS0KClsgICA5
MC44OTQ4NTNdIDlwbmV0OiBMaW1pdGluZyAnbXNpemUnIHRvIDUwNzkwNCBhcyB0aGlzIGlzIHRo
ZSBtYXhpbXVtIHN1cHBvcnRlZCBieSB0cmFuc3BvcnQgdmlydGlvCg==


--=-2/+iitcN5ZmKXaQ8auzP
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--=-2/+iitcN5ZmKXaQ8auzP
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--=-2/+iitcN5ZmKXaQ8auzP--

