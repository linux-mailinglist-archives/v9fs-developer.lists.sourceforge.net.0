Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C358639B3D
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Nov 2022 15:07:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozIJh-000683-Al;
	Sun, 27 Nov 2022 14:07:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ozIJV-00067l-V0
 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 14:07:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wtGluwXH/2Qxz5BbrxLDhKs0b/USvsd3CSaSU2mXw24=; b=D5S0PQtdAGMjSTaolJXwSXZ3JY
 l0GI+MjjUPmFgrOUHSaEMB73hT+Wt0brQpI8hqkAVGlarhC7ABUEzUhroWlRtZMtjuhQROgpA+GC7
 Qe3jDHd61wSWPCVavoTJEiPmIEAOTVQIq5UWXE1ghRWYaeQQBceOKSmwNimeiMNkj65s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wtGluwXH/2Qxz5BbrxLDhKs0b/USvsd3CSaSU2mXw24=; b=J8+mWDXw8J50TeMsqz1AnQYtJ0
 gzYN5e1oe7+jptUPwDPdLox6kfvaYL9GAkodo1bWwN3596633p/GoVynEiJ0xMF5WxcMs5OWhwk3E
 w2be9Ex0Lt6yNillwCVuJ5XXE556tufx8ADGS86nEmz7RWsFrDDbOxJEkgwWn6uy21XI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ozIJR-00FX3o-Uy for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 14:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=wtGluwXH/2Qxz5BbrxLDhKs0b/USvsd3CSaSU2mXw24=; b=oiEkTjE2+hjPKah7Tw6noMkEHn
 wMlebCwUurbqU01UVli/LPitljmkfeFzMwoHDbK9F9ljdLm4DxYgnWmC1jxM9lduJQsOSLSvBC2M7
 KPAMa/50bmPB5USua/X2Go9MlBAFMNf09Z0WGGxZu1G6r5v6kVc2Ry/DC/8avDu5YTAWQzT2OI8zY
 x0O5vwJ5J4zQNkQa9eb5V0x9sXT8+XYO6M1t6M+vb9UbosZqzLRc0q+NE2cR9IR8btKs3DXfpclRZ
 As4ZPo7+LvPK91vpvBMU1Dg8fsX4+75aBQEVuCtfOGKLV4FbUebsZHRgeEbKkvE3wzKxo69nzCMwW
 lrodwc1SrS8Z6hMmrqzj6msjIBpdhf3hgNr80Rmryfl32lJX3c+jp9c8VOVn8XlBfti5TvgazfJQs
 bSJyuvDrpG9eWMUxR1hCbK9w//Mms7mUSqpUWTra2iL5IAGOL7dqjPU2AYLp5FXAclA2zpSIX2EZL
 nvvfKe3q+NZbPUEkbEm0og3vvkb1ZViQzhAOOIdehsTREYkYO9IvtfMsXd0gV9cbNRZocyO3Cmzdv
 nvhcUT3NqxBFBS7bmqPS2wIi7vlMakqqJgsraltikB/ji3fXQ2YDZoytEsnw+87strsohIC6qclPh
 PqTir6iG7pv0WmNJEiin5h4wnfFeqhMbgHoUzGUFo=;
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Sun, 27 Nov 2022 15:07:00 +0100
Message-ID: <16697035.zmtlf8e6Si@silver>
In-Reply-To: <3d1e0ed9714eaee7e18d9f5b0b4bfa49b00b286d.1669553950.git.christophe.jaillet@wanadoo.fr>
References: <3d1e0ed9714eaee7e18d9f5b0b4bfa49b00b286d.1669553950.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, November 27,
 2022 1:59:25 PM CET Christophe JAILLET
 wrote: > The 9p fs does not use IDR or IDA functionalities. So there is no
 point in > including <linux/idr.h>. > Remove it. > > Signed-of [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ozIJR-00FX3o-Uy
Subject: Re: [V9fs-developer] [PATCH] 9p: Remove some unneeded #include
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sunday, November 27, 2022 1:59:25 PM CET Christophe JAILLET wrote:
> The 9p fs does not use IDR or IDA functionalities. So there is no point in
> including <linux/idr.h>.
> Remove it.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---

Right, it's used by net/9p/client.c only. Probably some more files in net/9p
could therefore be deflated as well. Anyway:

Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
