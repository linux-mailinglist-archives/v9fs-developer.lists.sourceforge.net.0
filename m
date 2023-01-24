Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 229EB678F07
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 04:35:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKA5o-00008s-Hz;
	Tue, 24 Jan 2023 03:35:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1pKA5m-00008m-QO
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 03:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KeZ9BYuTNP3d0+LoqPUUo8cuwmoRUwHY0k9GjFpzbGM=; b=Qx2xkonYKw0L5VklCoDubi8oVd
 RhvL9D3TpQb4kUD01p9d+m86CEyL1rfOMjibS0h/QHZE0NF08H8I7VKLBi7mkp1MWSU76TGsneGlw
 jjw73O5/q78fgBtyt6VrdHgACioYSfA2oLucsWQa1lptPLo87ZshLYYkxvY99EmGsalc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KeZ9BYuTNP3d0+LoqPUUo8cuwmoRUwHY0k9GjFpzbGM=; b=bJ4y4Yr8yg5ziFetnkhfzHExlr
 SkJg91aUOKkTw4XYu4TdDaHHQr6GePH3fTr3KhbtKubO/TPtnTzorL00qgt4tgQ+eBphLrV3i9IHZ
 oPVwlLdEfTOQsMnGM2cssRy4JqeSYTXRjzbrpg8JBoumdaK7YGwTu47GZxn5blErbwIo=;
Received: from mail-vs1-f42.google.com ([209.85.217.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pKA5i-0005q4-5n for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 03:35:25 +0000
Received: by mail-vs1-f42.google.com with SMTP id 187so15175054vsv.10
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 23 Jan 2023 19:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KeZ9BYuTNP3d0+LoqPUUo8cuwmoRUwHY0k9GjFpzbGM=;
 b=heZKBaZy5CFwNydSjMbuA91DnnsEWcpjsJJHiRbwYNKMY1H7kpiRDVq4bVPoEorFAl
 0gKsOiFoFiSKNoav2udW7ADnwM5aLoo/5WvYpUEewv78+b28m/o6xtfE5vWqdgZeebbl
 wUXfrErIU0hSPPNHieArpkP39rDg1pJ+tFE6AB0zpZW4et1f6ZySlH8zYpJtG3Mo0Z3Z
 n0LIDiDJJRDIP+hhd4y7W9Dsx4EVCOf4zaKkowPujlcXrHdQlpBquRdmKBHuitChlOhO
 v3ugOfJvcx1wYexVsRHk0ohjqKbFWFSQYZLYG5jLMJ5Q5qKxemP8p13NI5upBcHTxUYQ
 +Klw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KeZ9BYuTNP3d0+LoqPUUo8cuwmoRUwHY0k9GjFpzbGM=;
 b=3bhiSxN8OQ4RCglbbThpzKaqGckedIEJaLXPu28dC9Cif/r8SDSDuvJe4xXgfdpO03
 cOWfk/GamJZ10I1ZxIPcVyFPPvkOsyOhncJWm93e4+xjwdmpkLZ/fg5uB40GG8zrgWgR
 2ldlQfC91j4x2Qmwv7dWSsyTxZ4NcfgtXcBLpSNkmyDoxU5OrSVVG8Ie+h093ksPDb0U
 63+uVZh0u1wvDcFQ7whs4SZdFtUbdCLrPggWBrP6sWXIUNUvUmOnAaE0OJ3AzPNyLRrD
 LAc5jBjYoHxqXdmhVPcJucEJl5yIZ8fpIOdgo+gfLWEk3HoDX4mTCcpYydOzR33AsN8Y
 kAGQ==
X-Gm-Message-State: AFqh2kp6SUqCFAX7mcvchgoHwagd/KYY2WCIFN4soBhuCC35slM4ACwY
 BU+FrJhWzrbIoChbNKpiZejFCVy7uueSPXTctLQ=
X-Google-Smtp-Source: AMrXdXsJA8fvDGIVrfTl2tjHx/Qk7OaAO2oWFVNv9oNTc8BSKqqRs+R8bG1pTnBzRCVh4txvOhplzgVTXao04AEENeQ=
X-Received: by 2002:a05:6102:330c:b0:3d3:e956:1303 with SMTP id
 v12-20020a056102330c00b003d3e9561303mr3675154vsc.71.1674531316278; Mon, 23
 Jan 2023 19:35:16 -0800 (PST)
MIME-Version: 1.0
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-9-evanhensbergen@icloud.com>
In-Reply-To: <20221218232217.1713283-9-evanhensbergen@icloud.com>
From: Amir Goldstein <amir73il@gmail.com>
Date: Tue, 24 Jan 2023 05:35:04 +0200
Message-ID: <CAOQ4uxg6xVfow48j-yFBZ45-dwD=Kfm_aiT6ReQPhrTgaxzb5g@mail.gmail.com>
To: Eric Van Hensbergen <evanhensbergen@icloud.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Dec 19, 2022 at 2:22 AM Eric Van Hensbergen wrote:
 > > Add some additional mount modes for cache management including >
 specifying
 directio as a mount option and an option for ignore > qid.v [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amir73il[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.42 listed in wl.mailspike.net]
X-Headers-End: 1pKA5i-0005q4-5n
Subject: Re: [V9fs-developer] [PATCH v2 08/10] Add new mount modes
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Dec 19, 2022 at 2:22 AM Eric Van Hensbergen
<evanhensbergen@icloud.com> wrote:
>
> Add some additional mount modes for cache management including
> specifying directio as a mount option and an option for ignore
> qid.version for determining whether or not a file is cacheable.
>
> Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>


Eric,

A comment related to the entire series.

It is quite odd to see patches titled "Add new mount modes"
on fsdevel and possibly in git log later.

Would you mind adding 9p: prefix to your 9p patches
and the vast majority of filesystem patches do?

Thanks,
Amir.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
