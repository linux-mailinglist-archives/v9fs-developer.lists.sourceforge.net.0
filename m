Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 779FC2AFA05
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Nov 2020 21:48:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kcx2z-0005bP-Sl; Wed, 11 Nov 2020 20:48:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+19272268-b574-v9fs-developer=lists.sourceforge.net@em8497.indusdrills.org>)
 id 1kcx2y-0005b6-IC
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 20:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uoF377rzB9LhRah+uWvJigcN4I2CdxtPidP6uc0024Y=; b=iN/68apdkXMyrGfRG7Mnj0FtAr
 pwYnLTB+5jme7DbLg86zcEM7JNxY6hATylGe1XpvCmrSoTVtiqmV3I29cEL9ELQIKGRPp1R58vhlb
 yb33W/QQzryhsYEc7+H14L5LUWs+KKLoEm0RPFdIUN/d2nq+96mG0Y1Zuu02khqjsC8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uoF377rzB9LhRah+uWvJigcN4I2CdxtPidP6uc0024Y=; b=Y
 29J0TAd9mJO4OQaa5fitE+2ezVwN95RLGcD5vsXD66VZIvtnnuyJSmFk7SajztL+sLK/VauBchXGY
 SlmdYYgcUgfVmi5QkcmzpeVpiQrrISBxkkW2+GtFcmHQld97VltbdZ9xh6Smq9f5C+TcI3D4M+NdZ
 IUytUXPF+DgKLj/8=;
Received: from o1.ptr2397.indusdrills.org ([50.31.38.73])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kcx2h-00HIHY-Ri
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 20:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; 
 d=indusdrills.org; h=from:to:subject:mime-version:content-type; 
 s=s1; bh=uoF377rzB9LhRah+uWvJigcN4I2CdxtPidP6uc0024Y=; b=S4L7sYC
 E7p8MWociDxLrMMUDLMkFt+icSQFWfd0xI/f4UFIRZrhAZFQgoLnWJc+SBHqVhRo
 rw5Fhvv45P6zVM7jfrFg9Mlh6LZLEcH1LyhRPhKKTSO4BNjZMMitGZ9PlCPadFAc
 UmDmzmwJadzolggWb+k/Wlbu9qsLbzEZO7l0=
Received: by filter2300p1mdw1.sendgrid.net with SMTP id
 filter2300p1mdw1-10586-5FAC4E1D-21
 2020-11-11 20:48:29.920017941 +0000 UTC m=+518957.347555052
Received: from ec2-99-79-56-76.ca-central-1.compute.amazonaws.com (unknown)
 by ismtpd0030p1iad2.sendgrid.net (SG) with ESMTP id ZZzktC_DToauw7SjN0gQ0g
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Nov 2020 20:48:29.832 +0000 (UTC)
From: "support@lists.sourceforge.net" <mail@indusdrills.org>
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 11 Nov 2020 20:48:29 +0000 (UTC)
Message-ID: <20201111204830.AE682CC3A758A114@indusdrills.org>
MIME-Version: 1.0
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchKY+A/xPg9SNCqnk
 dUTyARjC0zncpzwV3M3wYJuKst9s0lpnrUJnGCk8rT1ltaKY/inKOHaMXCw3u/nA3G/pBiUZDLDO9P
 rKGfO/xYQcym17Q1jgcADJGo38lm546kjfVodVNFIvX9V2ellCM2Ny5cDq+IMx+viNwBUugSw3NfTQ
 6p5ITzecbUN0t79wNQVAl0oEgBIUXz2tNQsBkJHR8s2g==
X-Entity-ID: dhzRN/rFlU4I7ApPkNgmNA==
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sendgrid.net]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: u19272268.ct.sendgrid.net]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: u19272268.ct.sendgrid.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.7 NAME_EMAIL_DIFF        Sender NAME is an unrelated email address
 1.5 SENDGRID_REDIR         Redirect URI via Sendgrid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kcx2h-00HIHY-Ri
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] New Recording [13913790]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

wqAKwqAKCklEOiA8IHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCA+CgpBIGNh
bGxlciBpbiB5b3VyIGRpcmVjdG9yeSBqdXN0IGxlZnQgeW91IGEgbWVzc2FnZS4KCkNhbGxlciA6
ICsxIDcwMSAzMjggOTAxMApEYXRlOiAxMS0xMC0yMDIwCkR1cmF0aW9uOiAwMTowc2VjCgpMaXN0
ZW4gdG8gVm9pY2UgTWVzc8SFZ2UgCijCoGh0dHBzOi8vdTE5MjcyMjY4LmN0LnNlbmRncmlkLm5l
dC9scy9jbGljaz91cG49Y0pGSm55M3hjU0hkV0ZCLTJCbVdkQ2tLb0o3djRsY3ZZYy0yQnNGVkg3
NFN4TlhuNXhvMDEtMkJ6bzJIZFNVS3F3WDdObFIzazBmaGI2TFM1QWdldVFSUlFES3puZFc4WTQ1
U0RnTFFkUjhLdHZ0WUZrMjBkYXVjOGItMkZTdlZnM0o4cjZlLTJCN1B3WG1PLTJGOVBiN1ZEcFkt
MkJTUWgyaGZvbENqdGpPd254RzZpLTJGQlpCNjJFay0zRFphcmFfSjh6aDZDZ3FvZzUtMkZORU9m
Z3AzZDhKaXhPTlB0TW1reUF6LTJGdlBNS0tzMmp0YzJCdlBPOC0yRmVLQTdVbFptUmJKcGF5NG80
UDZmRlp6dnBkYnlsRUdqWWoyMWhQZENLMlpHeVlKYlc2akY1bWRZQ09FMVdMU2dRSWVnWG5OZnBF
TFJNLTJGUjR3QzRpS1ItMkZ4UklNM1JvYmNlbjdaM09EdnZtTVBoSk1WZjdWUzVHbHc2aUQ5eEtR
a2lVU2VQMlBvQzMtMkZNVURmbWVWSWxOZXE5MVBMVloxQ0M4bGZILTJCU1VYa1VzU09VUkJhc2dn
SmNORXJIazc3aFNxRk42Z0ZkeHpjOFAyCgpFbWFpbCB3YXMgc2VudCB0byB2OWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKCllvdXIgbWVzc2FnZSBsaW5rIGxhc3QgZm9yIDEyIGhv
dXJzwqAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
