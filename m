Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89731679920
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 14:20:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKJDe-0003fC-JM;
	Tue, 24 Jan 2023 13:20:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pKJDd-0003f5-9k
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 13:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S8Kzxt05nYbYv/Il6BkxFDEsa9KwofMO5gAxHua0u0Q=; b=ISe4gCmSnWXUNb/Ua7C02AKfCe
 bB1+/vEBvPt7btJI3GjxeLA6B1dW33rSCSPho3YoCiiC15K4IKpdaTWDNtlEoTg69D2zb2PNBOSe/
 a9nsJbd8/1HhjZBDv8+B2Cen6iChCo+/GdhaVA/dJ3N2ngUHIAXa6OgzUGCUKpcDy7+w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S8Kzxt05nYbYv/Il6BkxFDEsa9KwofMO5gAxHua0u0Q=; b=gUGMDUkU3Z9jSprFsMiwWc56UW
 cksu4bPL4Wjtgz1uiB6wh4P4G4IxUFJyT/Kd5iLqceJu9zu3RRO81Ut88g83ZNiIFhvtyuXwJMddW
 JxgYNvkgJcbw8VIl173qHdFRnPN0G8U4FwO2xq+4ISBEkeMviY5a06bIROfmiW7U8iBU=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pKJDa-0000Mf-HG for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 13:20:07 +0000
Received: by mail-wr1-f47.google.com with SMTP id y1so9360956wru.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 Jan 2023 05:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=S8Kzxt05nYbYv/Il6BkxFDEsa9KwofMO5gAxHua0u0Q=;
 b=OBULABva49l1uj5XfRdIeaR7BQqNE+F9Z4FEZLSRpdUq9NKs7SIK1CigazkB1calPn
 li/WA/0Mve+PUUF4zANyAB1WGgX+/PGI2pDFCRmW5AHF+s92T+UGDbGVJ/A7lDgYIvlR
 0yki1UQRgXzblAgAZFkl8hpxMt7GgMaTvObD/zaijny/BZVjekSjbYuej5yKaHEri+fy
 E1WZj2C1G4cBME7FCwWrAYRh5tdpQebXXWkmIqUObhBS4aQE42GEwNGWHtVc4mLVUL+j
 sOpMdJeF8ksYSYMF8H0gqgeJBhDBQ821VXP9F8mcc6T+J/gJI4d7j/p2BEIWedxWmKLB
 +hlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=S8Kzxt05nYbYv/Il6BkxFDEsa9KwofMO5gAxHua0u0Q=;
 b=b4X1ynW/zCHv6SYxd+jI31y6RoRW5MnLtwF/Yu3DBEHTzjT0dlNx65gaSwiN/PZRbO
 nm3kgnOSW1RqDjw8do9SzQvVXsO8ePahaoDCElv40UH0rPn94oQqLTt10h1tVRH8xCwC
 A6gt41c2k7i2zby+cUczDXeAt1eG2Y4L3DiQo0j+EaEzoadFtoDTRJsWFdfuNckehSat
 uiz12QWKztjwKcy3tkgKTBhikWbAg8rJUFP6qhECE1E79ML5HinXOqP5RgLY3GNPsQUg
 h8nAIu75QOGAcbwaCqKFOku2B8woMjg7nAyr77WUOPpIvgj+aZBf26YI6tWFjvWlaiCm
 GtVA==
X-Gm-Message-State: AFqh2kocAICSVA9Z+mhRVO+Z1f5QFYqwlYnRDO+MU6oAPXjLh89U8S3b
 xri0jxm1Z64y8U5Q58dbADiVmS2sSU0+DVMnYeo=
X-Google-Smtp-Source: AMrXdXs0jp8hzux2num/SK3+92Ghh9+9qWX6yljAqhEQ9nSQ/NY0UFYL3KRTYsdVHjwdBLkI/V4lBrq795+SaMaXCJo=
X-Received: by 2002:a5d:658e:0:b0:2be:54ab:41a4 with SMTP id
 q14-20020a5d658e000000b002be54ab41a4mr635460wru.104.1674566398901; Tue, 24
 Jan 2023 05:19:58 -0800 (PST)
MIME-Version: 1.0
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
 <CEE93F4D-7C11-4FE3-BB70-A9C865BE5BC2@icloud.com>
 <Y89HQXu90ea6Ed4r@codewreck.org>
 <CAFkjPTkX2t_YOEENVPEggV-yhyjYgBrYjYLYCH9JVeTifeap3g@mail.gmail.com>
 <Y89cxzpuZXgxYrs5@codewreck.org>
In-Reply-To: <Y89cxzpuZXgxYrs5@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Tue, 24 Jan 2023 07:19:47 -0600
Message-ID: <CAFkjPTkBznPVE3=FAUhOsUHewBK16Skwu0B5LY0qfZ80tKMXQA@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Okay, I'll go ahead and ask stephen to add me back into the
 next list and see what he says, in the background I'll also look at what
 it would take to setup a workflow to mirror branches from v9fs/linu [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
X-Headers-End: 1pKJDa-0000Mf-HG
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Ron Minnich <rminnich@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Okay, I'll go ahead and ask stephen to add me back into the next list
and see what he says, in the background I'll also look at what it
would take to setup a workflow to mirror branches from v9fs/linux on
github to kernel.org.  I've had automate regression testing and
performance regressions on my to-do list since before december so
might also get back to that once I finish fixing the dir-cache
patches.

         -eric

On Mon, Jan 23, 2023 at 10:21 PM <asmadeus@codewreck.org> wrote:
>
> Eric Van Hensbergen wrote on Mon, Jan 23, 2023 at 09:12:13PM -0600:
> > Was just looking at this, I imagine my 9p-next branch timed out of
> > being included in linux-next about a decade ago ;)  I could
> > re-establish, but I think it's probably best we keep a single 9p
> > funnel into linux-next and that probably means yours for now (there
> > doesn't seem to be much precedent in Next/Trees for
> > multi-maintainers).
>
> I seem to recall nfs used to alternate maintainers, and Next/Trees[1]
> lists a tree for trond and another for anna which would imply they each
> have their own branch.
> afaiu xfs does something similar but they seem to channel it through
> git://git.kernel.org/pub/scm/fs/xfs/xfs-linux.git, although there's
> three branches included in there...
>
> Anyway, it doesn't look like there's any clear cut rule here, we can
> probably do whatever looks good.
>
> [1] https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next/+/master/Next/Trees
>
> > We could try and coordinate around a shared
> > github for-next repo and require at least one other maintainer review
> > patches before submission to for-next and then mirror that to
> > kernel.org -- mainly looking to minimize workload for folks here, open
> > to other ideas.
>
> I don't particularly like github workflows -- would just follow along
> there if you want some gating, but going through github.com/v9fs/linux
> probably makes sense access-wise, I don't have an account on kernel.org
> so that'll be one less thing to do.
>
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
