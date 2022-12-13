Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9211964B051
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Dec 2022 08:19:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p4zZV-0006w6-Ga;
	Tue, 13 Dec 2022 07:19:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdanton@sina.com>) id 1p4zZU-0006w0-Cz
 for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 07:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+vhPehhg2xbMAmRvh9CBwGhIocCH2TJrgiPBC/HtFVE=; b=ZhToGMy88rl9PzY4Y/+kqga9Pe
 gUXSzROcYL9YPQXb1foikxqnx9Ry7/bpZlbYAjfs+hMmqu7PP7W3d9gm8+NHXyOdZ5Shh4jc57ZR7
 5FjUps8gJxS9bJvu5PKEBoWE4mVnaoBJmwHw2TfNLox2/wfcNpAYmFXFYgM+DL4YbTcc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+vhPehhg2xbMAmRvh9CBwGhIocCH2TJrgiPBC/HtFVE=; b=S
 YyQFs9Edltt2jxz2OSrM4BpFMG0f3MolxU/2FXklFS8HXSotZOxLOq3uDHb9VCrY0AaplBRBFGVSF
 yXMqMFu97wLb0gASKj415Es0sjtv9qN69WJ13u6/UKTx9Ulns1PH6xnq34hWy1lAiF41r379ZL8oX
 PXZFy8RYEO3bhmPI=;
Received: from r3-21.sinamail.sina.com.cn ([202.108.3.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p4zZP-00052R-UU for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 07:19:24 +0000
Received: from unknown (HELO localhost.localdomain)([114.249.57.238])
 by sina.com (172.16.97.32) with ESMTP
 id 639822050002C2BD; Tue, 13 Dec 2022 14:56:06 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 843830629277
From: Hillf Danton <hdanton@sina.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 13 Dec 2022 14:59:01 +0800
Message-Id: <20221213065901.3523-1-hdanton@sina.com>
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10 Dec 2022 09:10:44 +0900 Dominique Martinet > @@ -533, 6
 +533,12 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t
 *req, > p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n"); > [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.108.3.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.108.3.21 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hdanton[at]sina.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p4zZP-00052R-UU
Subject: Re: [V9fs-developer] [PATCH] 9p/virtio: add a read barrier in
 p9_virtio_zc_request
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
Cc: v9fs-developer@lists.sourceforge.net, Marco Elver <elver@google.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 10 Dec 2022 09:10:44 +0900 Dominique Martinet <asmadeus@codewreck.org>
> @@ -533,6 +533,12 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
>  	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
>  	err = wait_event_killable(req->wq,
>  			          READ_ONCE(req->status) >= REQ_STATUS_RCVD);
> +
> +	/* Make sure our req is coherent with regard to updates in other
> +	 * threads - echoes to wmb() in the callback like p9_client_rpc
> +	 */
> +	smp_rmb();
> +
>  	// RERROR needs reply (== error string) in static data
>  	if (READ_ONCE(req->status) == REQ_STATUS_RCVD &&
>  	    unlikely(req->rc.sdata[4] == P9_RERROR))
> -- 
> 2.38.1

No sense can be made without checking err before req->status,
given the comment below. Worse after this change.

/**
 * wait_event_killable - sleep until a condition gets true
 * @wq_head: the waitqueue to wait on
 * @condition: a C expression for the event to wait for
 *
 * The process is put to sleep (TASK_KILLABLE) until the
 * @condition evaluates to true or a signal is received.
 * The @condition is checked each time the waitqueue @wq_head is woken up.
 *
 * wake_up() has to be called after changing any variable that could
 * change the result of the wait condition.
 *
 * The function will return -ERESTARTSYS if it was interrupted by a
 * signal and 0 if @condition evaluated to true.
 */


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
