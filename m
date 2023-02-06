Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4098368C90F
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 22:58:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP9VX-0002N6-M1;
	Mon, 06 Feb 2023 21:58:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1pP9VU-0002Mz-Om
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fEJkg3vFsPDsEc2uUA+I0qUb7SDToyzc2fbeGRQ3Xkw=; b=hRby/HhN5CWCYvXSlRjOh95Kvq
 OXxM7Ub4pdeKC6D80k8mzzhSLmG8M+MfDvtT4esS4dm+z1jYHXu9ke3/oc4sbw/4sXx12ARvLAF3o
 UXnrTjk6MoWAwtAYhhgiM2XheQN+jL+v0RA4ANp5qTyaxDhYcfASpQjtNdwM4whnfvNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fEJkg3vFsPDsEc2uUA+I0qUb7SDToyzc2fbeGRQ3Xkw=; b=PtWVrG3FqKmjw1bkjC1kzZ+mgJ
 OxYncGIVJ0inhzGTUA4b566SD5uZrpoAR3280s6wervu23MDmDaIEfpwkUKJ2UnoHubxIJWLNf1PK
 wb4/IR5MDu6IM81dFMXZbtzRJpYnAQJcvJZBtsBMXu/plPDQ6ZM4QdfKCMuHdT0vxMbQ=;
Received: from mail-io1-f46.google.com ([209.85.166.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP9VS-0005OZ-A8 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:58:35 +0000
Received: by mail-io1-f46.google.com with SMTP id y7so4981229iob.6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 13:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fEJkg3vFsPDsEc2uUA+I0qUb7SDToyzc2fbeGRQ3Xkw=;
 b=wREIB52x7Gj4i8qeOALr/ssoKrPwfhniYRcBc6Uh6V1MmEK1evW2v1m4ZVXiQs15JJ
 T8yeV0lrc3+XZoSsfo5ocGpJ+VjPpUJWm3lqBfrzVkJ7SlJ40je6noq6B0vAVfcSfyvN
 1PTDy75YjKhQBymCUkeBPEIGTfyjyK0lf7Pbkso/Mm6DvMEsgTHmTycgHrQxiUa/l7Vi
 x66OVhSg1W1xmAs1OyBgAhgyIsv7G64By7yCD55yeUvhVSgSGm/9ndHN4OFT4iQBWlVC
 6kE65UBTjBOPqKBeGOrP/H1zDkKM9Hb1oJD4B+9s0++hAKgKV4fc55SvOM1d5zoNqGsp
 8fHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fEJkg3vFsPDsEc2uUA+I0qUb7SDToyzc2fbeGRQ3Xkw=;
 b=jAdpdw/d3qKz7ETCNiDTsHxyvxs9ZlqIzNyYQxW/dIwC2TV/ofvr/JfctP2/aQKXis
 TZr40rXxxCJPocCyjzZub7hWOHZbWU1bZo3GpCnNsFVjtPvI7l7dy6U7EU6UePI/2J9D
 ZeJfD9B83VVtnay8YI1FRR/eRFn24XGU+hnGbnpjoN5ilAJk8NGRhp+nbefMnm8A2JJo
 lELNGO798ZBf/PN90mghJIamXmc5qraisgHKmLLdk3+wL6ZaDZNhEhnEXpST+mOO5jb1
 962CaVUxP0GpDWZAqBr94fWFH1I+AaEBPASEZ2XZts25lebfGf5r+yZY/ozSD1MKIHpu
 NNcQ==
X-Gm-Message-State: AO0yUKXVFQM28j2dUDxAM+Tuq2mrzuDDhq59GWp5VFEKEEEIOfx+hiZg
 uyn4U2vEwI+AuxqAwt+O6+eyvNpNkHhjevwm
X-Google-Smtp-Source: AK7set/KwkWdqhwJl4TGWqMcSEKusrowg3HqumL7HuG+l7md0d8zHZvN/ZZM2krcBcTT8iE/80as6Q==
X-Received: by 2002:a6b:ed05:0:b0:716:8f6a:f480 with SMTP id
 n5-20020a6bed05000000b007168f6af480mr467293iog.0.1675720709379; 
 Mon, 06 Feb 2023 13:58:29 -0800 (PST)
Received: from [192.168.1.94] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 x11-20020a0566022c4b00b00724768be183sm3313927iov.13.2023.02.06.13.58.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Feb 2023 13:58:28 -0800 (PST)
Message-ID: <24add543-e230-7eca-e96b-7253f620b570@kernel.dk>
Date: Mon, 6 Feb 2023 14:58:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
To: Dominique Martinet <asmadeus@codewreck.org>
References: <9422b998-5bab-85cc-5416-3bb5cf6dd853@kernel.dk>
 <Y99+yzngN/8tJKUq@codewreck.org>
 <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
 <Y+F0KrAmOuoJcVt/@codewreck.org>
 <00a0809e-7b47-c43c-3a13-a84cd692f514@kernel.dk>
In-Reply-To: <00a0809e-7b47-c43c-3a13-a84cd692f514@kernel.dk>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  >> Sorry I didn't develop that idea; the signal path resets
 the pending >> signal when we're done, I assumed we could also reset the
 TWA_SIGNAL >> flag when we're done flushing. That might take a whil [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pP9VS-0005OZ-A8
Subject: Re: [V9fs-developer] [PATCH v2] 9p/client: don't assume
 signal_pending() clears on recalc_sigpending()
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
Cc: netdev <netdev@vger.kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Pengfei Xu <pengfei.xu@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

>> Sorry I didn't develop that idea; the signal path resets the pending
>> signal when we're done, I assumed we could also reset the TWA_SIGNAL
>> flag when we're done flushing. That might take a while though, so it's
>> far from optimal.
> 
> Sure, if you set it again when done, then it will probably work just
> fine. But you need to treat TIF_NOTIFY_SIGNAL and TIF_SIGPENDING
> separately. An attempt at that at the end of this email, totally
> untested, and I'm not certain it's a good idea at all (see below). Is
> there a reason why we can't exit and get the task_work processed
> instead? That'd be greatly preferable.
Forgot to include it, but as mentioned, don't think it's a sane idea...


diff --git a/net/9p/client.c b/net/9p/client.c
index 622ec6a586ee..e4ff2773e00b 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -652,6 +652,33 @@ static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
 	return ERR_PTR(err);
 }
 
+static void p9_clear_sigpending(int *sigpending, int *notifypending)
+{
+	if (signal_pending(current)) {
+		*sigpending = test_thread_flag(TIF_SIGPENDING);
+		if (*sigpending)
+			clear_thread_flag(TIF_SIGPENDING);
+		*notifypending = test_thread_flag(TIF_NOTIFY_SIGNAL);
+		if (*notifypending)
+			clear_thread_flag(TIF_NOTIFY_SIGNAL);
+	} else {
+		*sigpending = *notifypending = 0;
+	}
+}
+
+static void p9_reset_sigpending(int sigpending, int notifypending)
+{
+	unsigned long flags;
+
+	if (sigpending) {
+		spin_lock_irqsave(&current->sighand->siglock, flags);
+		recalc_sigpending();
+		spin_unlock_irqrestore(&current->sighand->siglock, flags);
+	}
+	if (notifypending)
+		set_tsk_thread_flag(current, TIF_NOTIFY_SIGNAL);
+}
+
 /**
  * p9_client_rpc - issue a request and wait for a response
  * @c: client session
@@ -665,8 +692,7 @@ static struct p9_req_t *
 p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 {
 	va_list ap;
-	int sigpending, err;
-	unsigned long flags;
+	int sigpending, notifypending, err;
 	struct p9_req_t *req;
 	/* Passing zero for tsize/rsize to p9_client_prepare_req() tells it to
 	 * auto determine an appropriate (small) request/response size
@@ -687,12 +713,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	req->tc.zc = false;
 	req->rc.zc = false;
 
-	if (signal_pending(current)) {
-		sigpending = 1;
-		clear_thread_flag(TIF_SIGPENDING);
-	} else {
-		sigpending = 0;
-	}
+	p9_clear_sigpending(&sigpending, &notifypending);
 
 	err = c->trans_mod->request(c, req);
 	if (err < 0) {
@@ -714,8 +735,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 
 	if (err == -ERESTARTSYS && c->status == Connected &&
 	    type == P9_TFLUSH) {
-		sigpending = 1;
-		clear_thread_flag(TIF_SIGPENDING);
+		p9_clear_sigpending(&sigpending, &notifypending);
 		goto again;
 	}
 
@@ -725,8 +745,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 	}
 	if (err == -ERESTARTSYS && c->status == Connected) {
 		p9_debug(P9_DEBUG_MUX, "flushing\n");
-		sigpending = 1;
-		clear_thread_flag(TIF_SIGPENDING);
+		p9_clear_sigpending(&sigpending, &notifypending);
 
 		if (c->trans_mod->cancel(c, req))
 			p9_client_flush(c, req);
@@ -736,11 +755,7 @@ p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
 			err = 0;
 	}
 recalc_sigpending:
-	if (sigpending) {
-		spin_lock_irqsave(&current->sighand->siglock, flags);
-		recalc_sigpending();
-		spin_unlock_irqrestore(&current->sighand->siglock, flags);
-	}
+	p9_reset_sigpending(sigpending, notifypending);
 	if (err < 0)
 		goto reterr;
 
@@ -773,8 +788,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 					 const char *fmt, ...)
 {
 	va_list ap;
-	int sigpending, err;
-	unsigned long flags;
+	int sigpending, notifypending, err;
 	struct p9_req_t *req;
 
 	va_start(ap, fmt);
@@ -789,12 +803,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	req->tc.zc = true;
 	req->rc.zc = true;
 
-	if (signal_pending(current)) {
-		sigpending = 1;
-		clear_thread_flag(TIF_SIGPENDING);
-	} else {
-		sigpending = 0;
-	}
+	p9_clear_sigpending(&sigpending, &notifypending);
 
 	err = c->trans_mod->zc_request(c, req, uidata, uodata,
 				       inlen, olen, in_hdrlen);
@@ -810,8 +819,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 	}
 	if (err == -ERESTARTSYS && c->status == Connected) {
 		p9_debug(P9_DEBUG_MUX, "flushing\n");
-		sigpending = 1;
-		clear_thread_flag(TIF_SIGPENDING);
+		p9_clear_sigpending(&sigpending, &notifypending);
 
 		if (c->trans_mod->cancel(c, req))
 			p9_client_flush(c, req);
@@ -821,11 +829,7 @@ static struct p9_req_t *p9_client_zc_rpc(struct p9_client *c, int8_t type,
 			err = 0;
 	}
 recalc_sigpending:
-	if (sigpending) {
-		spin_lock_irqsave(&current->sighand->siglock, flags);
-		recalc_sigpending();
-		spin_unlock_irqrestore(&current->sighand->siglock, flags);
-	}
+	p9_reset_sigpending(sigpending, notifypending);
 	if (err < 0)
 		goto reterr;
 

-- 
Jens Axboe




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
