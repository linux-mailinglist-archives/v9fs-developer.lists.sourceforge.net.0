Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC5A89A22
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Apr 2025 12:30:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1u4dYa-0001Fz-K4;
	Tue, 15 Apr 2025 10:30:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tabotong.es@deped.gov.ph>) id 1u4dYK-0001F2-GQ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 10:30:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3tZLOWCI4/6YllbGoDfwz0VTPsHZeKgoK+prqpBSk5E=; b=KtfihT+xpgXAUn15Y9spGCYRnW
 LVe1kKkiqW0DRyNliRjDHb/3ZEwVn4s6NzQ+1U5bbpKpD2uVdk28csjRi/03YFFDEAqJjzp6DhuQh
 34lhnncZQuwU+tFUyzKmgwgyj2WijbiQP09Gk0acLl2UO2HqXIkAJiHX9JBZl13Ggn1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3tZLOWCI4/6YllbGoDfwz0VTPsHZeKgoK+prqpBSk5E=; b=R
 UyEHrNq/XvvzODUqRrnEgqmpyybLILmfJdpGd5ilMIXqrsilMTBBXkV3SB1BctytJVGb8AUNl+xS/
 DYR8ynvR2NeawhMtt3KSTqXg97+xt3nFf9Eaej/NK/ScHsPGorzmEDV3U7g6krNuU+URBBpARnxTj
 XfNdC7D8SYDovUT4=;
Received: from mail-ej1-f48.google.com ([209.85.218.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u4dY4-0007o6-8B for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 10:30:05 +0000
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-ac345bd8e13so928968266b.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 15 Apr 2025 03:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=deped.gov.ph; s=google; t=1744712981; x=1745317781;
 darn=lists.sourceforge.net; 
 h=content-class:priority:importance:mime-version:message-id:date
 :subject:to:from:reply-to:thread-index:thread-topic:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3tZLOWCI4/6YllbGoDfwz0VTPsHZeKgoK+prqpBSk5E=;
 b=XMYRC5zd5PAeG9KJLXk4abZUHb6PCnQ7CiDzTm7jOpBN3CUU0RgRq/iF8hMjNXAWCV
 d+kAs4SytXmuMERWdEK4f/c7PBCOoBWLk05f9jmv4Xzl1JNWbiaObtzCndAlRlikrrK4
 PzPH3cAQILgjzJQ5e6XnPZVHp+M1JZ4S54rKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744712981; x=1745317781;
 h=content-class:priority:importance:mime-version:message-id:date
 :subject:to:from:reply-to:thread-index:thread-topic
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3tZLOWCI4/6YllbGoDfwz0VTPsHZeKgoK+prqpBSk5E=;
 b=Vbn/skrdV9milXJfJpo2n2hPyz0ryrbihPHQu8SMl/mfttB65fboG/NBDEbhBPjjND
 MfDV05UCehgvWXSD6popLI/efMfl1LTfcXrSafbAooCYsoOqynjQV6Jd7Xq0sD45OaTd
 mP6ocUHg3yGmkIERbD8xaKO6T6wzxCThVFe6hkzYQJeEoGtx7HRshULyzPOyVU7XqmqK
 es+Yw01h+eGB6lkTutbt8/0RambUupQZl/JXVc9bxAL+eOc2ldG8DLY+3snfc8aLS3uL
 7mcoRZIiviJB/8GOwTbVK7MTgag53tnA+/cxpNQZ0XkKi94eBu43YP/cyxpP+kvP2L57
 aABg==
X-Gm-Message-State: AOJu0YxWEeaN6okYOlKptKKGCRZUxdgQ9ZbogAQS6Ix3C0XYKUjOTx2n
 3KbgYoK5oSnfMBntfTvPQ77ygYtsA7s0yOYLXSVGIC04BnhmmNCwswQWEx9vbCv2hTLTS/dLZqP
 94TGtrgkRLfYY+JPNy9c/i6t3cAU03P4FKBvOF0KWZq2R0fhtgZseAOERQ43Qi16ekZRdAxz6eH
 4=
X-Gm-Gg: ASbGncslYyT82KGUVWQ1n9uBmUIUCJ+ts2JSWBSAxnp83ocDQw8yRz/Y7vzAtPTvqHk
 9U6Zoex+cASW7GrX13sv8ZyA2SDwmOfKHBic9aSTR8EeU0efCdSVHWHjbeq08joVm+cd1RVX03P
 UXHwNjfn8CN735oMsQgMHvPvFNZG4tGVnDPRb6QKBQieDPbVTEULe+Chu3FU+MsHgvjQaivTIxz
 qMyOBC+LFBgx5MFJMluX2GEleP0KkX+A4mdCTzesot2Vif3phxRNj3up2lXsZJhElcQkG8V8frl
 6fdFNBzR81/ptCq1DBC53sWRh5L8atar0dx1Pia+loiDauIm5hQic6EO
X-Google-Smtp-Source: AGHT+IEB4L2kbJWMp961MVx7/kf+AzyQ9v2uYSMx6XrWZvd9aAEqdhLURUywwyIBzjC3AojVlV5org==
X-Received: by 2002:a17:906:c105:b0:ac7:ed56:8a34 with SMTP id
 a640c23a62f3a-acad34996acmr1312299566b.21.1744712981221; 
 Tue, 15 Apr 2025 03:29:41 -0700 (PDT)
Received: from WINUV1QM7FUHOK ([45.137.22.168])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5f36ef5653bsm6702393a12.20.2025.04.15.03.29.40
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Apr 2025 03:29:40 -0700 (PDT)
Thread-Topic: potential collaboration.in Aviation
thread-index: Adut8UuYshQGyC0XQ5uPXCC+3hZatg==
From: =?utf-8?Q?Julio Silvio?= <tabotong.es@deped.gov.ph>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 15 Apr 2025 03:29:40 -0700
Message-ID: <D3ACD4C0E1FA4303A35FEF79D29B9F69@WINUV1QM7FUHOK>
MIME-Version: 1.0
X-Mailer: Microsoft CDO for Windows 2000
Importance: normal
Priority: normal
X-MimeOLE: Produced By Microsoft MimeOLE
Content-Class: urn:content-classes:message
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: -- ***This communication may contain confidential or
 privileged
 information, and is intended solely for the individual or entity to whom
 it is originally addressed. Any disclosure, copying, dissemination [...] 
 Content analysis details:   (2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.48 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.218.48 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [silvio11908[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.48 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1u4dY4-0007o6-8B
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] potential collaboration.in Aviation
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
Reply-To: silvio11908@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


-- 

***This communication may contain confidential or privileged information, 
and is intended solely for the individual or entity to whom it is 
originally addressed. Any disclosure, copying, dissemination, or any action 
taken in reliance to it by others, other than the intended recipient, is 
strictly prohibited. The opinions, conclusions, and statements expressed in 
this message are those of the sender and may not necessarily reflect the 
views of the Department of Education.**
*

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
