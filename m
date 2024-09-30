Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C2398A811
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 Sep 2024 17:02:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1svHuZ-0004qH-AL;
	Mon, 30 Sep 2024 15:02:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <monatamang62@gmail.com>) id 1svHuY-0004q9-KA
 for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Sep 2024 15:02:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:
 Message-ID:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=; b=J1RtpjdQ3jqI3pQrY9QClIfJYP
 0WEhxuk4Pf4z3+qf5YF9L6wBU2QdDsrm2IwtP4ajVjjhmJ4zO0VDu/DmsZl+QrwuBkAmy8VIgSyH1
 SrRdGCaX7pLQbs9IRWkT1ztwroZIVGeRP0Z7K8L+n60yh5FHaTXu1JerkMu3bVJx3i+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:Message-ID:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=; b=Y
 SP87LgqZydPT2SpsDXg90jMLr1CaVurxnQyVnNoGOfLtDhMxojDs/eWj4+ZFkLKoOhrHYpNUpF6xf
 e2KE2Ga7Wf+0CW+CnSyXO/Ff7ZfdlejzwFKvIaX5xvqBfGgl/T6Wm1KOVJ82OTZ4w1yn2Pfo4ChuX
 90xgJWD2MmWiRJtI=;
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1svHuY-0008Ei-1K for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Sep 2024 15:02:06 +0000
Received: by mail-pf1-f196.google.com with SMTP id
 d2e1a72fcca58-7178df70f28so3525748b3a.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 30 Sep 2024 08:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727708515; x=1728313315; darn=lists.sourceforge.net;
 h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=;
 b=L7uirqIwDqjJfeQdTul7uAvRBW6EX7l3pwvllW5wvLrVavkLG5dnGYs7RY0QMaoSxC
 IJdplWAqgXrWORLQBWEZ5upRZcKeVlnEFfqs/lWQCGxDllRB/UxE1W7nkva8NJfEk2Zo
 KOjU/u3pPsKX2XHpCnczrgD3VxTufqABCDpQgai8WDO9m5EjqD0cv9DExfGlG/y33PvR
 utRvqHT5OKF1hf3jH961tRhK7eJ3OcSript3GA1tNvrvdORZuciqiWnANligV4mH4/aY
 nrJiba6LRLZjCsi661UaIKEsDbey83G+NdPgwZ7UzgRgGPcVYszEkwjyiTFES4oTUQ6S
 YLhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727708515; x=1728313315;
 h=mime-version:date:subject:to:reply-to:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MxitZxgmvoGPY/D0MWsatY/SG1INnyxTi18mvHYSZYE=;
 b=mUGbtDJyr74ijGt42hpZsFbA6gGWwEk9m9JdAmF3rvJgovFYzN0UO2sAf9B/hoZIAL
 UDSuGXp8inBHzH7z4Fp4kRxOthoi4JTpcecG0KuNqwkLuZU4S6vhuVLC/hu7XYsVQxzP
 PIurADDQKjauDI1dHoT6yVYfW8GkfG0pzFaQhcsTZIyYKODwHlP4ehGUqDYjTENxiir3
 +bB9zk87y/oeKuwlVa+YaeJrkPK4HecQB7pBpU8hlbzGgS4JbiKCvPFxQPfP8FTwAbBU
 6Tslvg+pZuimbQjQP62NiOgLJChwuR13tWRGncq5hxwW+Tf2DnT1/x/Yr3Z9C3Q+w12s
 gbDA==
X-Gm-Message-State: AOJu0YyC14HPrLTtwcNewJoTCl1O1EMxxL86RWj7wvwq7tsuMwglP3Yh
 m5s3jQMZ0tmB53XhWVzrMYbxYq1mJ9baLFxt3CexO0+O//CEUsBeD/b5PDjL
X-Google-Smtp-Source: AGHT+IExyEJdptaSioKgtQ5ioZPXjtCkj1pxw/6wsDukuHnimxUphHphQac4GWjz2W64UU2/Kid05A==
X-Received: by 2002:a05:6a00:3e1c:b0:719:2046:5d76 with SMTP id
 d2e1a72fcca58-71b2607ae90mr19521668b3a.23.1727708514965; 
 Mon, 30 Sep 2024 08:01:54 -0700 (PDT)
Received: from [103.67.163.162] ([103.67.163.162])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71b265160c8sm6285052b3a.126.2024.09.30.08.01.53
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2024 08:01:54 -0700 (PDT)
From: Michelle Fangman <monatamang62@gmail.com>
X-Google-Original-From: Michelle Fangman <michfangman@outlook.com>
Message-ID: <d41083772b1f40a1ebaa9f8e125b20f78457314d9944158b9026c0cc2cd82d89@mx.google.com>
To: v9fs-developer@lists.sourceforge.net
Date: Mon, 30 Sep 2024 11:01:50 -0400
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I'm offering my late husband's Yamaha Piano to any
 music enthusiast who may appreciate it. If you or someone you know might be
 interested in receiving this instrument for free, please feel free to rea
 [...] Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [monatamang62[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [monatamang62[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-Headers-End: 1svHuY-0008Ei-1K
Subject: [V9fs-developer] Baby Grand Piano  09/30
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
Reply-To: michfangman@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

I'm offering my late husband's Yamaha Piano to any music enthusiast who may appreciate it. If you or someone you know might be interested in receiving this instrument for free, please feel free to reach out to me.

Warm regards,
Michelle 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
