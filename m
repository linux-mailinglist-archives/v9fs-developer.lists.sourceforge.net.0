Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C5D419031
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Sep 2021 09:48:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mUlN2-0001rA-Mp; Mon, 27 Sep 2021 07:48:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bounce@ekogroup.com.ro>) id 1mUlN0-0001qn-CY
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Sep 2021 07:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:
 Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IEcBYuqrlARkh/C/ErV0WZ7vld2A8OrGjS9M3OaYPwA=; b=eD0DFvOFfu5uQOiL5luv6UJPF8
 jH8zQr32jxPw0pdJ75cLj4rIO4sQIst3mF6Cfeyd/yzkK7tMx5oSoZzEY/DBWq0EN6R4XZATQLOAF
 mUj/4OYCkpcKywOGMQolkpmMSJYaxxAj+QP7XSzn2n5/+qeA7dulYZT4oEJYMShRFXDU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:Message-ID:Reply-To:From:Date:
 Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=IEcBYuqrlARkh/C/ErV0WZ7vld2A8OrGjS9M3OaYPwA=; b=Th+kS77THerE
 JF+rMLzxeWerFOuVLtOTrdZMAJFytSvFn4O1A7aAu1M3zDuRRu/XwZVCN3MLdfzcnaVHZLxwvEmW8
 nC5pN5eCAhsZ8gLAlXssAWdhdLpI9WSvBrYIeRnh0UZKjlDXhJU5V+11P1VnaDyGIvyv6tSmzfSJI
 lPfR0=;
Received: from ekogroup.com.ro ([49.12.209.59])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mUlMz-0074ry-7E
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Sep 2021 07:48:14 +0000
Received: from ekogroup by server.ekogroup.com.ro with local (Exim 4.94.2)
 (envelope-from <bounce@ekogroup.com.ro>) id 1mUlMs-005JFb-JP
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Sep 2021 09:48:06 +0200
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: ekogroup.com.ro/index.php for 49.12.209.59
Date: Mon, 27 Sep 2021 07:48:06 +0000
From: "Office | ekogroup.ro" <office@ekogroup.com.ro>
Message-ID: <FqfaDoD4O0jijP1LDnyBHq42NGRJkAIE9VMD5dZyM@ekogroup.com.ro>
X-Mailer: PHPMailer 6.5.0 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.ekogroup.com.ro
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1001 990] / [47 12]
X-AntiAbuse: Sender Address Domain - ekogroup.com.ro
X-Get-Message-Sender-Via: server.ekogroup.com.ro: authenticated_id:
 ekogroup/from_h
X-Authenticated-Sender: server.ekogroup.com.ro: office@ekogroup.com.ro
X-Source: 
X-Source-Args: php-fpm: pool ekogroup_com_ro                            
X-Source-Dir: ekogroup.com.ro:/public_html
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzExOTQ4ODIsInA0NXdoOGp3cXY0MHNrd2tjY2dzOHdrd2tna3dvMGNnIiwiMjgiLCIwOTJlMDYwYjU0MGUi
    [...] 
 
 Content analysis details:   (5.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
                [Blocked - see <https://www.spamcop.net/bl.shtml?49.12.209.59>]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1mUlMz-0074ry-7E
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Bulk product offer from Romania
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
Reply-To: "Office | ekogroup.ro" <investitii@ekogroup.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekV4T1RRNE9ESXNJbkEwTlhkb09HcDNjWFkwTUhOcmQydGpZMmR6T0hkcmQydG5hM2R2TUdO
bklpd2lNamdpTENJd09USmxNRFl3WWpVME1HVWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMS0wOC0xOSBsYSAxNS4xOS4wNV0oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RXhPVFE0T0RJc0luQTBOWGRvT0dwM2NYWTBNSE5yZDJ0alkyZHpPSGRy
ZDJ0bmEzZHZNR05uSWl3aU1qZ2lMQ0ptT1RBMU56WXlNRFJtTXpjaUxHWmhiSE5sWFEpCltDYXB0
dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDgtMTkgbGEgMTUuMTYuNDVdKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekV4T1RRNE9ESXNJbkEwTlhkb09HcDNjWFkwTUhOcmQydGpZMmR6T0hkcmQydG5hM2R2TUdO
bklpd2lNamdpTENKbU9UQTFOell5TURSbU16Y2lMR1poYkhObFhRKQpbQ2FwdHVyYcyGIGRlIGVj
cmFuIGRpbiAyMDIxLTA4LTE5IGxhIDE1LjI2LjE4XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFeE9UUTRP
RElzSW5BME5YZG9PR3AzY1hZME1ITnJkMnRqWTJkek9IZHJkMnRuYTNkdk1HTm5JaXdpTWpnaUxD
Sm1PVEExTnpZeU1EUm1NemNpTEdaaGJITmxYUSkKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAy
MS0wOC0xOSBsYSAxNS4yMS41N10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91
dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RXhPVFE0T0RJc0luQTBOWGRv
T0dwM2NYWTBNSE5yZDJ0alkyZHpPSGRyZDJ0bmEzZHZNR05uSWl3aU1qZ2lMQ0ptT1RBMU56WXlN
RFJtTXpjaUxHWmhiSE5sWFEpCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDgtMTkgbGEg
MTUuMjIuNTZdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekV4T1RRNE9ESXNJbkEwTlhkb09HcDNjWFkwTUhO
cmQydGpZMmR6T0hkcmQydG5hM2R2TUdObklpd2lNamdpTENKbU9UQTFOell5TURSbU16Y2lMR1po
YkhObFhRKQpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIxLTA4LTE5IGxhIDE1LjIzLjA1XSho
dHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0
aW9uPWNsaWNrJmRhdGE9V3pFeE9UUTRPRElzSW5BME5YZG9PR3AzY1hZME1ITnJkMnRqWTJkek9I
ZHJkMnRuYTNkdk1HTm5JaXdpTWpnaUxDSm1PVEExTnpZeU1EUm1NemNpTEdaaGJITmxYUSkKW0Nh
cHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMS0wOC0xOSBsYSAxNS4yMy4xNF0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RXhPVFE0T0RJc0luQTBOWGRvT0dwM2NYWTBNSE5yZDJ0alkyZHpPSGRyZDJ0bmEzZHZN
R05uSWl3aU1qZ2lMQ0ptT1RBMU56WXlNRFJtTXpjaUxHWmhiSE5sWFEpCltDYXB0dXJhzIYgZGUg
ZWNyYW4gZGluIDIwMjEtMDgtMTkgbGEgMTUuMjMuMjVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekV4T1RR
NE9ESXNJbkEwTlhkb09HcDNjWFkwTUhOcmQydGpZMmR6T0hkcmQydG5hM2R2TUdObklpd2lNamdp
TENKbU9UQTFOell5TURSbU16Y2lMR1poYkhObFhRKQpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAy
MDIxLTA4LTMwIGxhIDExLjQwLjIxXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9y
b3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFeE9UUTRPRElzSW5BME5Y
ZG9PR3AzY1hZME1ITnJkMnRqWTJkek9IZHJkMnRuYTNkdk1HTm5JaXdpTWpnaUxDSm1PVEExTnpZ
eU1EUm1NemNpTEdaaGJITmxYUSkKCkVLTyBJTlRFUk5BVElPTkFMCklOVkVTVCBTLkEuCl9fX19f
X18KClN0cmVldCBFbWlsIFBhbmdyYXR0aSwgbm8uMTAgKzQgMDc1NyA3NyAyOCAyOAppbnZlc3Rp
dGlpQGVrb2dyb3VwLnJvCgpbZmFjZWJvb2tdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxw
b2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekV4T1RRNE9ESXNJ
bkEwTlhkb09HcDNjWFkwTUhOcmQydGpZMmR6T0hkcmQydG5hM2R2TUdObklpd2lNamdpTENJeE5q
RTBNVGhrWTJOalpqZ2lMR1poYkhObFhRKSBbaW5zdGFncmFtXShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
eE9UUTRPRElzSW5BME5YZG9PR3AzY1hZME1ITnJkMnRqWTJkek9IZHJkMnRuYTNkdk1HTm5JaXdp
TWpnaUxDSTVaVFl4TUdSaU1tTmxaREVpTEdaaGJITmxYUSkKW1Vuc2NyaWJlXShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFeE9UUTRPRElzSW5BME5YZG9PR3AzY1hZME1ITnJkMnRqWTJkek9IZHJkMnRuYTNk
dk1HTm5JaXdpTWpnaUxDSXdZbUU1TkdJeFpUYzJORFlpTEdaaGJITmxYUSkgfCBNYW5hZ2UgeW91
ciBzdWJzY3JpcHRpb25bbF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RXhPVFE0T0RJc0luQTBOWGRvT0dw
M2NYWTBNSE5yZDJ0alkyZHpPSGRyZDJ0bmEzZHZNR05uSWl3aU1qZ2lMQ0l5WkRjMVltSmxOV1Zo
WTJVaUxHWmhiSE5sWFEpCkFkZCB5b3VyIGVtYWlsIGFkcmVzcyBoZXJlIQpfX19fX19fCgpDb3B5
cmlnaHQgwqkgMjAyMSB3d3cuZWtvZ3JvdXAucm8sIEFsbCByaWdodHMgcmVzZXJ2ZWQuCgpbRmFy
bWVyc01hcmtldC1Cb3R0b21dCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK
