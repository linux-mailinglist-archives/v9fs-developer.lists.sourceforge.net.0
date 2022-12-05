Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 838E3642972
	for <lists+v9fs-developer@lfdr.de>; Mon,  5 Dec 2022 14:32:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p2BaP-0007oh-TU;
	Mon, 05 Dec 2022 13:32:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <elver@google.com>) id 1p2BaP-0007ob-5f
 for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 13:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d5fYKRyZintOwoAGXMb6vGdAfTkwnfN4FsoS+VpmLyU=; b=eX/z0n+9pRHB067L7uiogM1L9c
 M43HuWK3reS0HwBa/fyB9r2j6LlkYCOmXSNs96w+i0FYPlS4t9njFB8ebZtnnUooXVkzG72CqwDwG
 QXvo0zb+B7acDisHqIK+kAdqjfUg/92dxAUaeqRQGyhK602UNCw87G6VfWJYAXoWSNsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d5fYKRyZintOwoAGXMb6vGdAfTkwnfN4FsoS+VpmLyU=; b=a6SCCibfFPFSrksarVHE270Ksf
 C7fIFut/0PDeASNVpptT+SLZeDOibFclgR+4KCZndTGi2bAwpBnG2Ske0WuWEI/pdNUIgsJxoLKbw
 UZYvU8gkti7H3WDWc97RII6Y6nq0hcdRbdnVHq9OKTidK4VfHv6udfxXuzHyd69qwrig=;
Received: from mail-yw1-f173.google.com ([209.85.128.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p2BaK-0002xz-9t for v9fs-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 13:32:45 +0000
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-3b10392c064so118064657b3.0
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 05 Dec 2022 05:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=d5fYKRyZintOwoAGXMb6vGdAfTkwnfN4FsoS+VpmLyU=;
 b=BAdYHPPP5OlG6xmYe6hrYXJ5TJiLHef2nFE1sZvmtNSWq0ktjNzHwTjwBS99idioB6
 9QIMJl/9n2ykISx3iZuIHapsxavHVSDHT8P9scTqlevnTMrnpn3+ShMmg4OJtoYUSTqb
 Akd3L3YyjHzBUcE+zLOZsCTTtFffiNK5nIr0GbhXwyDRf/Jh/CaRkGOiydFl4W+vGf+m
 80K45FQ5T5wmEy6xu3h/ahz4g6Hv0+2bh0qfzbWL5WKCXtn15YItvTo9qIEzwpeQlyhh
 RL/Gio2mgeOs3F+LtLsBzB9iVK8foBdsktAW1c4ylQiib/DPerkdmU3z/0ZuGmZNCtUp
 I1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=d5fYKRyZintOwoAGXMb6vGdAfTkwnfN4FsoS+VpmLyU=;
 b=xY+XNl2JZJWviVOBfFJVPlJNz1TLyRoTx4HNZI+TJO9AVRDL50YwM73MCZxHDYYdkk
 gnvoabaWS2Y5bLOMr1/PflhZmaLko2kZK0qEf9fcQ67IIXcOX021hFYZBInYHWNS91zB
 hQD6QuH0rNyT86ExeeqzifWkf1+zuNgiwEoI1Ic/eB23TAXkVENSLTw8Ar9kIDLarAPs
 M+Nj4laEATZ+VlpeabYDTdPJPQzWYtObi5E7XZO7gJo+bo7eMvyPpabIC8hu+BmNcBGv
 uIQASh1ca8EbZZc7HRT8wd4uLZaHdIYQlPB8iC6u3OI13PGE5icj0OLqQESLYPkVwC7E
 7PDg==
X-Gm-Message-State: ANoB5pl2AVr4a63suBx6keUhY+r4FRFs4WrXGMmwScczdWRX+KPBCQP+
 y/80N/J6O3UEoqOa3IG0vT7aSDc1goYotk9UUwoCvsz5DHK4SyOO
X-Google-Smtp-Source: AA0mqf7zu+Ix/fLrJS9443B/niuWcGFRgKoqLnW3h5dAxUc0KDmHjt0UE05e3vf46HWpBGzmwxNyXbr2+GeDuVzqeeg=
X-Received: by 2002:a25:1e89:0:b0:6f6:b3d1:edcc with SMTP id
 e131-20020a251e89000000b006f6b3d1edccmr34524757ybe.125.1670245616011; Mon, 05
 Dec 2022 05:06:56 -0800 (PST)
MIME-Version: 1.0
References: <20221205124756.426350-1-asmadeus@codewreck.org>
In-Reply-To: <20221205124756.426350-1-asmadeus@codewreck.org>
Date: Mon, 5 Dec 2022 14:06:18 +0100
Message-ID: <CANpmjNNjSat=TkXUmv351yPGn=6SV27NaXe80dU69Ggy5SHxsg@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 5 Dec 2022 at 13:50,
 Dominique Martinet <asmadeus@codewreck.org>
 wrote: > > KCSAN reported a race between writing req->status in p9_client_cb
 and > accessing it in p9_client_rpc's wait_event. [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.173 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1p2BaK-0002xz-9t
Subject: Re: [V9fs-developer] [PATCH] 9p/client: fix data race on req->status
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
From: Marco Elver via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Marco Elver <elver@google.com>
Cc: v9fs-developer@lists.sourceforge.net,
 Naresh Kamboju <naresh.kamboju@linaro.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 5 Dec 2022 at 13:50, Dominique Martinet <asmadeus@codewreck.org> wrote:
>
> KCSAN reported a race between writing req->status in p9_client_cb and
> accessing it in p9_client_rpc's wait_event.
>
> Accesses to req itself is protected by the data barrier (writing req
> fields, write barrier, writing status // reading status, read barrier,
> reading other req fields), but status accesses themselves apparently
> also must be annotated properly with WRITE_ONCE/READ_ONCE when we
> access it without locks.
>
> Follows:
>  - error paths writing status in various threads all can notify
> p9_client_rpc, so these all also need WRITE_ONCE
>  - there's a similar read loop in trans_virtio for zc case that also
> needs READ_ONCE
>  - other reads in trans_fd should be protected by the trans_fd lock and
> lists state machine, as corresponding writers all are within trans_fd
> and should be under the same lock. If KCSAN complains on them we likely
> will have something else to fix as well, so it's better to leave them
> unmarked and look again if required.
>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Suggested-by: Marco Elver <elver@google.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

Acked-by: Marco Elver <elver@google.com>

In case you're interested, KCSAN has a strict mode that is more
aggressive about which data races it reports (by default we're hiding
several classes of data races). One such class is data races due to
missing memory barriers, where e.g. an unmarked operation can be
reordered in such a way (by compiler or CPU) that a concurrent racy
access occurs. This mode can be enabled with CONFIG_KCSAN_STRICT=y.
It's most effective with some good stress tests for the subsystem of
interest. See https://docs.kernel.org/dev-tools/kcsan.html#modeling-weak-memory

Thanks,
-- Marco


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
