Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B45BA680BFE
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 Jan 2023 12:30:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMSNE-00086i-F5;
	Mon, 30 Jan 2023 11:30:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jgross@suse.com>) id 1pMSN9-00086X-QU
 for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 11:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F5tvXC7HtW6uV1znsSDLlPCqv0VIL0/rtPv9zkhoXZU=; b=SchpOBE/Gv1H5PKzX2z2uRcUco
 5bkiZSajATr27YRFOSaisXJpNK/pTyj59SUehj1Xk2go5GHvroc0oCe8wA5e+QOAIPFDxgiG+H1lh
 vzC4mKZ597M8Fsr1WqYsvgiePL29x9m4iN9cVN/gLwcj8reWs+moYyLF1ZJLWU31ELv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F5tvXC7HtW6uV1znsSDLlPCqv0VIL0/rtPv9zkhoXZU=; b=U
 GLqAQADuSQOmfmjTGosePqpZbk/hAs9KWehLtwCYUD1knGQOM3BFuLkQnUWf1gZxzrAbDelag+/nu
 aIG8JB3VR08WyrgSG40uBFD8HCsrF/at4qgLuwyE2W39ZDpgotW05bnMc324CWZtAJr8OM7Ykx5lS
 7J9DpoDKzI8iU9+s=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pMSN5-003aQD-60 for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 11:30:51 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 0C17D1FDCA;
 Mon, 30 Jan 2023 11:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1675078240; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=F5tvXC7HtW6uV1znsSDLlPCqv0VIL0/rtPv9zkhoXZU=;
 b=d2p9bovPz9H1pQXcRUIVspbkWRhMppGV80UyHfyIgmJoUSH6rPHF8qdQaI2s6DYJrHswd5
 oMyOrXSi3eknyhplkGJlAHYvgnHkfx/BclTjEiNQeICiR6gsA/tW0Upp3LX4vtNdKqCpn6
 DF237dEUn2Jc9igQfsmexUYVs0WLNkA=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A667713A06;
 Mon, 30 Jan 2023 11:30:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id mEpYJ1+q12PGJQAAMHmgww
 (envelope-from <jgross@suse.com>); Mon, 30 Jan 2023 11:30:39 +0000
To: linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 netdev@vger.kernel.org
Date: Mon, 30 Jan 2023 12:30:34 +0100
Message-Id: <20230130113036.7087-1-jgross@suse.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 9pfs Xen PV-device frontend has 2 issues regarding
 connection
 to the backend. Fix them. Juergen Gross (2): 9p/xen: fix version parsing
 9p/xen: fix connection sequence net/9p/trans_xen.c | 48
 ++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+), 17 deletions(-) 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pMSN5-003aQD-60
Subject: [V9fs-developer] [PATCH 0/2] 9p/xen: fix 2 issues with connecting
 to backend
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
From: Juergen Gross via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Juergen Gross <jgross@suse.com>
Cc: Juergen Gross <jgross@suse.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The 9pfs Xen PV-device frontend has 2 issues regarding connection to
the backend. Fix them.

Juergen Gross (2):
  9p/xen: fix version parsing
  9p/xen: fix connection sequence

 net/9p/trans_xen.c | 48 ++++++++++++++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 17 deletions(-)

-- 
2.35.3



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
