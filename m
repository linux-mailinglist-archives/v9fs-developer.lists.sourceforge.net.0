Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4728342BED5
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Oct 2021 13:21:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1macK8-0002Te-A7; Wed, 13 Oct 2021 11:21:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1macJw-0002RI-11
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 11:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nQQWQUgxuW6Tu+PRvCtkwuIVHgAhZ7y427FiGzCqW1I=; b=UJgYcgOgPZRGnJsHcW1xfReHIm
 EbWRW4LDSeHC0SusZVttXTFc2+ZzUAnieCaSjhFBvshPMErlarZHkfdHnxuu/oKRN2pqESOwm8T6X
 2YFxFa4yEIVZYRWfJY3ws1DFtCdOAlrzNSl1H55lM8eDA8lsw4kDnc5+mtfrvDeJTPAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nQQWQUgxuW6Tu+PRvCtkwuIVHgAhZ7y427FiGzCqW1I=; b=H+AQuOAHJTczR5lRsNW2OVtd0j
 uT+ngUbdnBvbMCQ9YBTviwQNFwvKDMgq50TKUlU38UWvPVfKvupKHBwkZ6TMRx/TgMMyKOk/TpL/C
 kliX+4+nFcdGsBIe+JVuCwk4jFeQEtA5R1G8WYUBFgn2OZG3umt0XmMUls2IO3l+DknU=;
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1macJl-00075q-Uf
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Oct 2021 11:21:10 +0000
Received: by mail-il1-f173.google.com with SMTP id s3so2348272ild.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 13 Oct 2021 04:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nQQWQUgxuW6Tu+PRvCtkwuIVHgAhZ7y427FiGzCqW1I=;
 b=zuDceFqPkzhsXg/5Ra0cCOC1bU0nBHOgMC+yisKtXJINh/T8f5KQ5Xk3tN1hEQWy1f
 fF/5Ti7SlnxHTZ8CRdyv6Jl7qV6+yL697U37ZNkhKajiI+l/0MJiVPCdQ2f0nPB60e3l
 deL9dfPtSkXLUF1i0K5lBK/jrlNzSLsedO4pErBw8lcHrmTQsFpVw/Kq9PVvZIU+2X3S
 BjO3inmiQSb4KC3RcJr5s4SFs01LRfMOjiO3Y4IdS3Rj0CRwh+XHIqdFiSxlkBam0yxV
 rxKuYNPGd/pLOsHpTEsqWBSUGsQm4kgH2TClaSNsf9ya4bJIDlxKTpNOca2+BLM7jp/t
 D1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nQQWQUgxuW6Tu+PRvCtkwuIVHgAhZ7y427FiGzCqW1I=;
 b=pzUOtJZ3KyfXaUm2zuP8GYfI/Hy93q4YOh7XtsN2Qx/W3eX5jhsOuMuGNetgRPYwDi
 +++e7jy0a3eMIurhkFb9l5hbflnFheMJRF2AqOW9JK/rLN+j4I2CYo6W+LVB/Nr/gBAw
 +qavJXAu+Z8SjmZvhXsugi59hBiiAVUJ5VscG88Xt1tUwvs3VTGhonYK10P1pRnWnwXC
 Y2ahsPfFp5DFmTAMqH3O8IlvZu1+wuAYKM5Ffrt/Q+wY4OvWd35X7Q+XnM6PhGvqmrpI
 R852Iviyv/RQYm3FY6nk4iKuaw0Ch5dMLg+C9X0fTOA6Cw/lae1EY1VLojtqQgkEVSeD
 VPsg==
X-Gm-Message-State: AOAM532IkmzofeWCXS+mqJs8vMNM6XxjJwAUkx7K20Wxh15chvMBbWB8
 3VCbTTxp8mEjKpZFuQHGk5AOiVJIGgNKCQ==
X-Google-Smtp-Source: ABdhPJxhzjNSoABq+dGG77CzsRDyX+40KYVEdGsQI8qW5B1JHU6i8UmOJoBqJRMmoCIvhAQ+em8rxg==
X-Received: by 2002:a63:2dc7:: with SMTP id
 t190mr27705777pgt.455.1634122814960; 
 Wed, 13 Oct 2021 04:00:14 -0700 (PDT)
Received: from localhost ([106.201.113.61])
 by smtp.gmail.com with ESMTPSA id g189sm5284657pfb.75.2021.10.13.04.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 04:00:14 -0700 (PDT)
Date: Wed, 13 Oct 2021 16:30:12 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Message-ID: <20211013110012.3exppbls2wggqfhb@vireshk-i7>
References: <20211013105226.20225-1-mst@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013105226.20225-1-mst@redhat.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13-10-21, 06:55, Michael S. Tsirkin wrote: > This will
 enable cleanups down the road. > The idea is to disable cbs,
 then add "flush_queued_cbs"
 callback > as a parameter, this way drivers can flush [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.173 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.173 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1macJl-00075q-Uf
Subject: Re: [V9fs-developer] [PATCH RFC] virtio: wrap config->reset calls
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 Stefan Hajnoczi <stefanha@redhat.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <vireshk@kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 netdev@vger.kernel.org, Gerd Hoffmann <kraxel@redhat.com>,
 linux-scsi@vger.kernel.org, Will Deacon <will@kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Dave Jiang <dave.jiang@intel.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Miklos Szeredi <miklos@szeredi.hu>, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Takashi Iwai <tiwai@suse.com>,
 Gonglei <arei.gonglei@huawei.com>, Kalle Valo <kvalo@codeaurora.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, virtualization@lists.linux-foundation.org,
 Jeff Dike <jdike@addtoit.com>, Vivek Goyal <vgoyal@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Amit Shah <amit@kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 Marcel Holtmann <marcel@holtmann.org>, linux-um@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-block@vger.kernel.org,
 Vishal Verma <vishal.l.verma@intel.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Matt Mackall <mpm@selenic.com>,
 Dan Williams <dan.j.williams@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Cristian Marussi <cristian.marussi@arm.com>, Jens Axboe <axboe@kernel.dk>,
 Jie Deng <jie.deng@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-gpio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 iommu@lists.linux-foundation.org,
 Anton Yakovlev <anton.yakovlev@opensynergy.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Johannes Berg <johannes@sipsolutions.net>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, "David S. Miller" <davem@davemloft.net>,
 Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 13-10-21, 06:55, Michael S. Tsirkin wrote:
> This will enable cleanups down the road.
> The idea is to disable cbs, then add "flush_queued_cbs" callback
> as a parameter, this way drivers can flush any work
> queued after callbacks have been disabled.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> ---
>  drivers/gpio/gpio-virtio.c                 | 2 +-
>  drivers/i2c/busses/i2c-virtio.c            | 2 +-

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
