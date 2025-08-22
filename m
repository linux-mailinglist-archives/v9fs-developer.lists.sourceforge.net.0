Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D715CB31F38
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Aug 2025 17:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AVGXABD7xSADT+iB1QGbAFZPAl13pjiu5HIUv8me5uI=; b=Rlp5GWwrIzUVf23aiJ0Y0XMb3H
	hu4eU38uhIrh60hHvwQAI2R0+ZOLGqV+iMALILCh+PVOqJe/aPiPrnrRg4CfXV3rg2xJQzt+oGa9p
	zNt40y7lMteuc/OWqEzsSw5rSiYj7qUwQwWAyFKu67OcKdEAw+/fFHwRJ89Oc1jQp2Ho=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1upTxT-0001OZ-Q1;
	Fri, 22 Aug 2025 15:45:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@speedemail72.com>) id 1upTxS-0001OS-II
 for v9fs-developer@lists.sourceforge.net;
 Fri, 22 Aug 2025 15:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RlxsU/PDsr2eJaM/Vd18fCkDvK/W6ScpIxSOwBEKpQg=; b=CSO6Umcs1tMFMzZQoWKzKzLwMy
 Qs/9b6oCVAeKu8L1hxUPuPb20Zo5JaISlVwI7b1ayXeEHRXfN+afyVL8V3GtaosEDB+tXK1kVDRPs
 Kd0/9zFak5Im1a1v1OLFP1o1yeyKnvBjkPa2Uk4o+8YkVB/aGH6CxW3sSz7CENYdgPbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RlxsU/PDsr2eJaM/Vd18fCkDvK/W6ScpIxSOwBEKpQg=; b=Y
 moDIx0JC8C2V+ChDRdQ/HidqxXDDypht6cNf9agWxKVNdMgif3fL8XZ79Djbnukg2jONVtxoOQzwo
 nXUZVJvxlqNRuYM2Z2x8xcmXTlmvALD2hQqEdZd2q4Irv6tFu5UsCYll75GdbC4QW9JemKLFU/I58
 Lt7x1DQxLV+KecPE=;
Received: from mail.speedemail72.com ([102.222.20.192])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1upTxR-0008Nf-Uz for v9fs-developer@lists.sourceforge.net;
 Fri, 22 Aug 2025 15:45:38 +0000
Received: from speedemail72.com (unknown [194.156.79.184])
 by mail.speedemail72.com (Postfix) with ESMTPA id BF471300E622
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Aug 2025 17:45:24 +0200 (SAST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.speedemail72.com BF471300E622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedemail72.com;
 s=202506; t=1755877525;
 bh=RlxsU/PDsr2eJaM/Vd18fCkDvK/W6ScpIxSOwBEKpQg=;
 h=Reply-To:From:To:Subject:Date:From;
 b=fBhx84/iSr64MjwG5pLC6i/KyNkYpSHjAOHzuUupFq3vCJfUAYgUj17YLeeMAAT+T
 3m7rQDms0OmXaMLvUVWaZYwv7VhCyd8C2QrODLmZmJo/V1uiusGf/xoNq10HnWU+aa
 ouZqwaNqNX41RPjqCbspPdQ81QqJJzMWY7yI2Cs2yujflr7lf2FyITCi+B/zSm9acK
 D1s/RxwKyoOd2IBs+I7ppHBWoVXLMlkFWTAkoj7FmzzCacPMfsb7u/S+YatqbXKG0y
 9mNP2K73z5hQwNxjskwCvxfEJdflBhCJvFtk42RZQw/C6WK31GYq9A9IMrrMeb8kjO
 xts1Qd7pT68kg==
To: v9fs-developer@lists.sourceforge.net
Date: 22 Aug 2025 08:45:24 -0700
Message-ID: <20250822084522.45E145232BEA5B85@speedemail72.com>
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4
 (mail.speedemail72.com [0.0.0.0]); Fri, 22 Aug 2025 17:45:25 +0200 (SAST)
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear [Company],
 We hope this message finds you well. Al Raffah
 Investment LLC, a private investment firm from the Gulf, is eager to explore
 potential partnership opportunities with your company. We're impressed by
 yo [...] Content analysis details:   (2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 [abdulbasit894(at)outlook.com]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [102.222.20.192 listed in wl.mailspike.net]
X-Headers-End: 1upTxR-0008Nf-Uz
Subject: [V9fs-developer] Get funding for your Business and Projects
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Abdul Basit via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: abdulbasit894@outlook.com
Cc: Abdul Basit <info@speedemail72.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear [Company],

We hope this message finds you well. Al Raffah Investment LLC, a 
private
investment firm from the Gulf, is eager to explore potential 
partnership
opportunities with your company. We're impressed by your current
projects and believe our investment could further drive your 
success.

We'd love to discuss how our funding can support your growth and
expansion plans. If you're open to exploring this further, please 
let us
know your preferred method of communication (e.g., call, email, 
or
meeting), and we'll accommodate your schedule.

Looking forward to the possibility of collaborating and growing
together.

Best regards,

Abdul Basit


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
