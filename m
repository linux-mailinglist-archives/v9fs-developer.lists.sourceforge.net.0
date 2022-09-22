Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E558C5E5EBD
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 11:38:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obIf7-0002Gq-A4;
	Thu, 22 Sep 2022 09:38:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1obIf5-0002Gi-FD
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 09:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7/tUR8Twi9O5B7cIIo+vV2uW+fGk3+Mw/gvhBQ3/U1U=; b=Npv9NKzk04Z9A02TDuN4O1KTIF
 yvEfC2rjGNo98Pd3Cq6MEYV4cpcIAvvSSvxdN0PVeBsii4Z8Giyx2tc0R450vtPJBOR6i92vg77FL
 gMx540oDlKJ6uALBGn+v2eM11Xst65sF1yRs60pz9bt9RdCQVQJmBDP3X1hoTBIRxKj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7/tUR8Twi9O5B7cIIo+vV2uW+fGk3+Mw/gvhBQ3/U1U=; b=RwznKDnc3u7dtPRpNTWLfsyeLL
 iqOLV9Cs5NdASLMvyTcx3XxUEwGaZrr+Cs1l7ArkhxV4MWgO+NVXBKF1SjojCj91VQqoQgLgNoRn3
 RruLp/Z6+g8nhvZ+tb+XXBLMMuK6spliuoaBjUGtTImc0r5vOR/JrsGQUxejpFXaKkWE=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obIfB-00033u-0e for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 09:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=7/tUR8Twi9O5B7cIIo+vV2uW+fGk3+Mw/gvhBQ3/U1U=; b=EsvNZA9CO8vydLl2jUH5NHjWrr
 suqd1xw9apHI4ciQQP2ynoNZ2I4idoh5HZaimNJl8FKyahAxF/ygbnvSF/zT8Kf+G2ilPEQrttgU5
 yp5zJccKZPyE1YnJruD+rzre2qZ1+V0yVhvltViUuFhiB28Lk0/Xz6fg01+BVbcdNYHZD7kfDvlhH
 GDh1Nmadcd/cImJRmHEcHi+POa917fEDCN8aoDWZrf4Z5IRKFGUiyVYJkD1i2ipgjg+QUoh4tpoCI
 uXTlr3GSkslRSENtkLOCbWs+AFBeuxPq+mNYx7wtZ9oPcYwj09HG+XWGR7la5QfM92ZuQexwYAavA
 f+jh4WfzfxD3tKx+ZPfCFICQY9bJrbuXBFi7PI1cwepn4c75y+tFcegGP66PP1SuAY5tcvto4/TPf
 YBJ3aoPbOBfLHL+ynZzvmGRyhTml6MX+wHQlDambWjjaIhc9R2HmKmM0PLjuwJB3hd2GhwF+ingcC
 kptTD3hfIYvg+tInzqZwRAN5oHnlTro5bHWrId80tbYtUtj/MzTe2k0WbFx5Qlss7CHlQ+hRdATdV
 u9LFsXUYCnkbDnR8+y2AzkRsRlnH0G+ZziLRAfS5Fe8hU6DTAjXvOq+QFxL4gg7piyU5yhpLFEj8O
 yjhAa/SvOy6LlP7SSZwwTwR1E6vod51WdXouPhtEU=;
To: asmadeus@codewreck.org, Li Zhong <floridsleeves@gmail.com>
Date: Thu, 22 Sep 2022 11:38:20 +0200
Message-ID: <2328558.MEb0jBPE05@silver>
In-Reply-To: <CAMEuxRo-QctyufOmAxZdoNrPE57KFd0MLa-kQftmhpHQfkWkJQ@mail.gmail.com>
References: <20220921210921.1654735-1-floridsleeves@gmail.com>
 <YyuA13q/B236lZ6U@codewreck.org>
 <CAMEuxRo-QctyufOmAxZdoNrPE57KFd0MLa-kQftmhpHQfkWkJQ@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Donnerstag,
 22. September 2022 00:12:38 CEST Li Zhong wrote:
 > On Wed, Sep 21, 2022 at 2:23 PM <asmadeus@codewreck.org> wrote: > > Li
 Zhong wrote on Wed, Sep 21, 2022 at 02:09:21PM -0700: > > > par [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1obIfB-00033u-0e
Subject: Re: [V9fs-developer] [PATCH net-next v1] net/9p/trans_fd: check the
 return value of parse_opts
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Donnerstag, 22. September 2022 00:12:38 CEST Li Zhong wrote:
> On Wed, Sep 21, 2022 at 2:23 PM <asmadeus@codewreck.org> wrote:
> > Li Zhong wrote on Wed, Sep 21, 2022 at 02:09:21PM -0700:
> > > parse_opts() could fail when there is error parsing mount options into
> > > p9_fd_opts structure due to allocation failure. In that case opts will
> > > contain invalid data.
> > 
> > In practice opts->rfd/wfd is set to ~0 before the failure modes so they
> > will contain exactly what we want them to contain: something that'll
> > fail the check below.
> > 
> > It is however cleared like this so I'll queue this patch in 9p tree when
> > I have a moment, but I'll clarify the commit message to say this is
> > NO-OP : please feel free to send a v2 if you want to put your own words
> > in there; otherwise it'll be something like below:
> > ----
> > net/9p: clarify trans_fd parse_opt failure handling
> > 
> > This parse_opts will set invalid opts.rfd/wfd in case of failure which
> > we already check, but it is not clear for readers that parse_opts error
> > are handled in p9_fd_create: clarify this by explicitly checking the
> > return value.
> > ----
> 
> Thanks for the patient reply! I agree that the check on
> opts.rfd/wft against ~0 will prevent error even if it fails
> memory allocation. But currently the error log is
> 'insufficient options', which is kind of misleading and the
> error code returned is -ENOPROTOOPT instead of -ENOMEM, which
> I guess would be better if we distinguish between them.

Avoiding those confusions for users makes sense to me, but then please also 
mention that in the commit log, because it is also useful to know the actual 
motivation of a patch.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
