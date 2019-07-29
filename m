Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C43A78E57
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Jul 2019 16:47:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hs6vs-0002XI-Lq; Mon, 29 Jul 2019 14:47:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>) id 1hs6vl-0002Wg-Jh
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 14:47:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tp13KIZyxW/HUo/k7TqlcYpzZ2vSqWCZ8hRiWQUnNrA=; b=GhiJa2LjPtLVHUy/aVuvqbD/RT
 kllLtQC7TvXyPeTUE25QP8AATx3I9GmE/L1bDT98FsY/R3qpzgwq86IBZC8Tb8CBmeERLtAGeebr8
 taa8Jtv870JOGH018vV2c2sIOzP2VZ1wVtWjR8/5okwJex5NK7a6dDJWE3ORjEN66+mQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tp13KIZyxW/HUo/k7TqlcYpzZ2vSqWCZ8hRiWQUnNrA=; b=civ7IbP6Yf0P5WCjYIL4Dv3Xe2
 Sue8He7x2ls9N7f1N4aIyuFpJ4jI/jdQBaFiQap0StsTRqIfx2slK4RH403MvU2NDHpM4gpovoZLa
 m3eZZJTL5Y1TAOffp3BCZXAqO2SyAXe3cFa3NbfmVX+lNOaaN6xw1A9YJnBGUimIZvKs=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hs6vj-00Ee2y-EG
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Jul 2019 14:47:17 +0000
Received: by mail-qk1-f194.google.com with SMTP id d79so44266863qke.11
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 29 Jul 2019 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tp13KIZyxW/HUo/k7TqlcYpzZ2vSqWCZ8hRiWQUnNrA=;
 b=oawsf/tX9gqElOJd5+WpuZm4xmAz1Ab6RkxbNDYNIMxEI56FFfOeijaPCmNE4Lj/Dq
 oawS3zAbpLWZ5LJAqqRzyqz/lDNdlGwFckSUUcmjwpvkJvCVsTnWlZXIIb2xoVpV0f7C
 S/1lZMrSb5yKjldwRHVMhnTwPDa8KANACfUKgvqJVnSzon7qohWZEBEMCCHOHv3SypH2
 rr9YhD1VWWCG6gYsYp3HZlQ22GwMHe1a1STtXa+2n6SzBi1vtqVU1sorpu9Q05JhCegV
 ktwc5iyQaigLO1fhKJ2kJaDmx2R5+xNoBC1F1wpkdzPQhUntQvc3Y30wlOU2U5GEJOZc
 U3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tp13KIZyxW/HUo/k7TqlcYpzZ2vSqWCZ8hRiWQUnNrA=;
 b=XnCGwlSUVe39qD6ytdMGATsEC+PFoFEt2N51vCHo2Q90NE7OBKQVnj7ZAk5L6o3TAW
 RvKbtm15qTuwf/z3Hv19hcaBB4hU1SaPd/LNA0OzKPbwlkuLbJ0GO+myB8u0S2ajSpdS
 t2BsOjRTa1GpUN2MkAnamIVLNgP7r68gieqGHImFbxod7IVUqxVVi1vfGX71ctKxIfPc
 EofC4klN/F1SRFZO6LFt3WUmOkpkIRSSO+GrPdsO1OPbIgGWWPODQKGihExrmV65SDnT
 gn5XrjV+iDWXk0eA27I7eCjy4EuY47caa2lH1fmI2TSixUDz/RcSAZ342Gpnfgx2FTSU
 rIsw==
X-Gm-Message-State: APjAAAWx8oHH3OFyMd8ZxmJ1OQwxtSOQ9ywQrYTJ66whYzr/jp6KIbDN
 WXYeGKfhpfg78rgWNtmtIq2pT5r/au4uaA==
X-Google-Smtp-Source: APXvYqwlcdfRKnJ5qhYvNehqw7PetDVYBSyws4Kc3e74wuN7fKiYbK3taI/YYGg9dA7gVGaeqeF7pg==
X-Received: by 2002:a37:a090:: with SMTP id j138mr73759023qke.83.1564409985925; 
 Mon, 29 Jul 2019 07:19:45 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id c26sm25950347qtp.40.2019.07.29.07.19.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 07:19:45 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hs6V7-0007FN-1r; Mon, 29 Jul 2019 11:19:45 -0300
Date: Mon, 29 Jul 2019 11:19:45 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20190729141945.GF17990@ziepe.ca>
References: <20190728163027.3637.70740.stgit@manet.1015granger.net>
 <20190729054933.GK4674@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729054933.GK4674@mtr-leonro.mtl.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hs6vj-00Ee2y-EG
Subject: Re: [V9fs-developer] [PATCH v2] rdma: Enable ib_alloc_cq to spread
 work over a device's comp_vectors
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
Cc: linux-rdma@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Chuck Lever <chuck.lever@oracle.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 29, 2019 at 08:49:33AM +0300, Leon Romanovsky wrote:
> > +/**
> > + * ib_alloc_cq_any: Allocate kernel CQ
> > + * @dev: The IB device
> > + * @private: Private data attached to the CQE
> > + * @nr_cqe: Number of CQEs in the CQ
> > + * @poll_ctx: Context used for polling the CQ
> > + */
> > +static inline struct ib_cq *ib_alloc_cq_any(struct ib_device *dev,
> > +					    void *private, int nr_cqe,
> > +					    enum ib_poll_context poll_ctx)
> > +{
> > +	return __ib_alloc_cq_any(dev, private, nr_cqe, poll_ctx,
> > +				 KBUILD_MODNAME);
> > +}
> 
> This should be macro and not inline function, because compiler can be
> instructed do not inline functions (there is kconfig option for that)
> and it will cause that wrong KBUILD_MODNAME will be inserted (ib_core
> instead of ulp).

No, it can't, a static inline can only be de-inlined within the same
compilation unit, so KBUILD_MODNAME can never be mixed up.

You only need to use macros of the value changes within the
compilation unit.

Jason


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
