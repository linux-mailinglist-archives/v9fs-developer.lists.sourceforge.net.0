Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DED05564AA9
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 02:05:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o89ab-0001Xg-DE; Mon, 04 Jul 2022 00:05:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o89aZ-0001Xa-7c
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 00:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6hVouwjl8OdtSjj86pTldg/I5jA2PJxxqF+9EMQv310=; b=YDIaAvmaEabWgMDjnIJ+YOQj7+
 4NZQDJQ43ykrIZBmtxK79R3jEVLjS4RlLzVOk3nm1/+HO08K9zu1TfEGhnR0HZOglsyjZFyYZH+Rb
 eVRMnLSaPNktxLKvb3R8PPhfyzmmy6jbKgcXO23CEbFdsXg6f6jVWpadrf5Rg1eexy84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6hVouwjl8OdtSjj86pTldg/I5jA2PJxxqF+9EMQv310=; b=iH3WHstxoKrkrX8iErDvNvGX5X
 PTFNQvOCu6Yuq+ystGgvDmyOu5Hs+ZRNubGffSIIAl//zCgLp3k9jmTksptLOaLgEXAkW1ISO+F7n
 RDm5E+IzBwVS6nuTIsx3kbeMNuD1IDMrN5f8ZiXfLUuEOYkrwEqjJf2hEXhn5RZDUoAg=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o89aY-006TLx-Bw
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 00:05:18 +0000
Received: by mail-qt1-f171.google.com with SMTP id h19so7903161qtp.6
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 17:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6hVouwjl8OdtSjj86pTldg/I5jA2PJxxqF+9EMQv310=;
 b=VY5odnjvmzcW1BiY4mnEJb7eLRMTCnis4leQcxahgkE7PNH+cgAG94507yds3A3dbw
 KTcEK5tKf9YQREu7qcKm9iwhqF4uqMXUtyJuvoYwPKjpAG22D1pnrOuIlmU2mo5L9ggZ
 EQDI2hkXxWmnCIeLSR6oih0bazAx1vMGRa9KXaXq/kshVGxik2KPA0IBkH6mMwrvoVFY
 udPTcc+LchYiQqWJPC2EVmLt/9h/44tVx13eC+iNE3hSGRKYcTufF5ddIcb0ejfgF1qo
 RuoM8ryFccLmb07rt8ZaXdgZYrCv711kFeU/yg6XR5clY743zc6fFvbPOOXGx16jP640
 /LiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6hVouwjl8OdtSjj86pTldg/I5jA2PJxxqF+9EMQv310=;
 b=iIurQ6RYvsG2H7p6q2O9FbMKx2UpVP8nrcJaEkwcAcIYPsjF+hMPod/0cuWuMra+96
 4PiePKrpq7lyLpAATqKV59Lgx3NQXngtVscVYcpIDAZspyIg2W74Gj3Zeb5ryrNaGkez
 GXQEcKBPceKW0ZQv30tPHmafBk2KJT0kQCo2o96/I5L1Sb37BvgOdH+61OGXE2w8Tc5J
 fDXfE76Bx+/oUGylkWDiq45z1PMWnCs9pxWsUC6L2n5RtiTPemElt9h0Ey/7z67Z/Njh
 NmMpWfxVdOxMGVaA700TA63McjVX+8MwJflMmlgTQFobdiLo7FqjcRvhNnYNaCHODj1h
 sG2w==
X-Gm-Message-State: AJIora+na3tI2gF8c7NDdxZncjYesBQvqGgvrqJedcuGkTD0tqOkN8zO
 DuhAv5kVVWcDEdA6XRb/qA==
X-Google-Smtp-Source: AGRyM1sT+fyCV2+IurldzzdZY04Z0JqCLds6nuCf7w1Sdoc32ehmVgVYmAa/sitrLMjSHJG/VF3N9w==
X-Received: by 2002:a0c:fc03:0:b0:470:3be6:b70d with SMTP id
 z3-20020a0cfc03000000b004703be6b70dmr25671965qvo.95.1656893112326; 
 Sun, 03 Jul 2022 17:05:12 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 o1-20020a05620a2a0100b006a6f68c8a87sm15202563qkp.126.2022.07.03.17.05.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 17:05:11 -0700 (PDT)
Date: Sun, 3 Jul 2022 20:05:10 -0400
From: Kent Overstreet <kent.overstreet@gmail.com>
To: asmadeus@codewreck.org
Message-ID: <20220704000510.2a2hn7g3tjxj65ab@moria.home.lan>
References: <20220703194636.hex2sa4buchizhbu@moria.home.lan>
 <YsH5MauacM3vX3xZ@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsH5MauacM3vX3xZ@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 04, 2022 at 05:16:49AM +0900, > Unfortunately
 that's a limitation of how buffers are handled in the > underlying 9p
 transports
 (see net/9p/trans_*.c) -- trans_fd calling > writes would b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o89aY-006TLx-Bw
Subject: Re: [V9fs-developer] Memory allocation failure in v9fs
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
Cc: ericvh@gmail.com, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>, lucho@ionkov.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jul 04, 2022 at 05:16:49AM +0900, asmadeus@codewreck.org wrote:
> Unfortunately that's a limitation of how buffers are handled in the
> underlying 9p transports (see net/9p/trans_*.c) -- trans_fd calling
> writes would be easy enough to adapt, but we have similar adaptations
> that need to be made to all other transports (rdma, virtio, xen) that
> likely all have APIs handling sg lists as well so definitely possible,
> but not something I'd call easy.
> 
> It's a known thorn though and defintiely something that we want to look
> at eventually, in particular for virtio Christian has been working on
> increasing the msize cap:
> https://lore.kernel.org/all/29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net/T/#m80ef85e82fb57ae658000624752eafd44812ff5c
> 
> the latest patches of that series would make big allocations much rarer
> and are probably good enough to get in quickly.
> I was half just not finding time for it and half waiting for the virtio
> spec improvements that'd be needed for the first half of that series,
> but that part is useful either way and I'll put it back on the list of
> things to try to finish this cycle.

That will be welcome :)

> The rest (actually making APIs not depend on physically contiguous
> memory for other transports) has no-one working on them and I doubt
> I'd have time for it any time soon, but I'd be happy to review patches
> if it's a thorn.
> 
> (meanwhile, if 9p performance isn't a bottleneck for your tests you can
> probably just reduce the msize back down to 64k or 32k to reduce one or
> two orders of allocations and you'll stop seeing these...)

Since you point out msize, if that's a limit to the maximum RPC size we should
be able to just add a mempool?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
