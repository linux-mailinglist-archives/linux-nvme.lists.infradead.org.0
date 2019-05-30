Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134BD302C4
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 21:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9oerQNq1+Y2xsqIW1hKJkirKd1pCN6Qhs2z/lvYdY8=; b=j6tpzeq1mxXsU0
	Cxwo/PLSxsoCFRj3WwFtP82eJN8eRUpqbwh328P+xHTnb9YQsgNAWmJOMWsRFpMklsW0FxWQkPKVr
	Ttvjvyx03oQjIaBqjgDicV0Z9QNzgnunuO+4iMW9+3zw5ejjKT06Cz0dxTt7Uha2pk9UdoF0PqzYi
	Gw6YtpTXa5hkMz+cfuNXks3UXJKJ9GIM5q+Ojs7KqlCqyanqcWLMzL8732H6P110NoZ7cO9aY/UVh
	1HevEPnsXUOXNgHN1Saq3JjRF3KuWJlp0vQb7JqmM6DbHiTrEDEOfyk6BsRdKHG3F0gBF2eVXgmdT
	mYpY1gJ5DcgWPR20cEwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQkB-00071k-Ph; Thu, 30 May 2019 19:29:43 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQk5-00071P-GJ
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 19:29:39 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4UJTCvK047487;
 Thu, 30 May 2019 19:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=ynUF1nxBy9L89/s1zupP2nHsp2lN+HP/IBuTVCj2mC4=;
 b=MXHO6ozj0TUii8C05Ag2bce3XoO8OP9kl5Krr59lFv9x6y1hKaL+0lfR+DvBxXqEhsoZ
 KdJx/baRfg+lDeDTRbMJK6gn9wGPxEEQeeWDYyp7W1MdD00n2/oXRpWpBt8oyLzpRoMN
 4YSqEvNdtEMfqjmy7y7UwCj/y03gMr0hL4x4/oiS9Cm/y17082E0WGfB5mdWRgFRj4aG
 bZ8tz8cuzwXl6W6a6n6LVrlAbpCwXGgvPprx35jewgSt/05j0X6t6upHZwGlKZR5LYBj
 ddiQnZIYc87Tk68Xc+DrtyFl6kSfbmOeF4tFsxvaznbcMistl0ixpXr4vajLtS2iQh+K Sw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2spxbqj54a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 19:29:28 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4UJTPO2094390;
 Thu, 30 May 2019 19:29:27 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2ss1fp91sn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 19:29:27 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4UJTQb1028419;
 Thu, 30 May 2019 19:29:26 GMT
Received: from dhcp-10-154-151-36.vpn.oracle.com (/10.154.151.36)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 May 2019 12:29:26 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [GIT PULL] nvme fixes for 5.2
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <12ddd385-22a3-d109-7997-31d7ed4f0ee6@broadcom.com>
Date: Thu, 30 May 2019 14:29:24 -0500
Message-Id: <FF2176CE-C846-448A-AF71-E5C0AAA90CBB@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
 <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
 <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
 <12ddd385-22a3-d109-7997-31d7ed4f0ee6@broadcom.com>
To: James Smart <james.smart@broadcom.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905300137
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905300137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_122937_679464_FE93690B 
X-CRM114-Status: GOOD (  29.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAzMCwgMjAxOSwgYXQgMjoyMSBQTSwgSmFtZXMgU21hcnQgPGphbWVzLnNtYXJ0
QGJyb2FkY29tLmNvbT4gd3JvdGU6Cj4gCj4gCj4gCj4gT24gNS8zMC8yMDE5IDExOjM1IEFNLCBT
YWdpIEdyaW1iZXJnIHdyb3RlOgo+PiAKPj4+IEhJIFNhZ2k7Cj4+PiAKPj4+ICAgICAgUHJpb3Ig
dG8gaW1wbGVtZW50aW5nIHRoZSBub3RlZCBjb21taXRzIHdlIG5ldmVyIGdvdHRlbiB0aGlzIGZh
ciBiZWZvcmUgaW4gcmVjb3ZlcnkgYmVjYXVzZSB0aGUgc3lzdGVtIGVuY291bnRlcmVkIHRoZSBP
T1BTIGFzIG5vdGVkIGluIHRob3NlIGNvbW1pdHMgYW5kIGZlbGwgYXBhcnQgd2l0aCBqdXN0IG9u
ZSBuYW1lc3BhY2UuIE5vdyB0aGlzICBvY2N1cnMgZHVyaW5nIHBhdGggZmFpbG92ZXIgdGVzdGlu
ZyB3aGlsZSB0cnlpbmcgdG8gcmVjb25uZWN0IHR3byBuYW1lIHNwYWNlcywgIGFuZCBpdCAgZW5k
ZWQgdXAgd2l0aCBtYXggcmVjb25uZWN0IGF0dGVtcHRzIG9mIDYwIHRoYXQgcHJvZHVjZWQgYSAg
ZGlmZmVyZW50IHN0YWNrIHRyYWNlLgo+PiAKPj4gSSBzZWUuCj4+IAo+Pj4gQSBtZXNzYWdlIGRp
ZCBhcHBlYXIgaW4gdGhlIGxvZyB3aXRoIHRoZSBuYW1lIOKAnG52bWUw4oCdICwgYnV0IEkgY2Fu
4oCZdCB0ZWxsIGlmIHRoYXQgaXMgdGhlIGRldmljZSBuYW1lIHRoYXQgd2FzICBiZWluZyBkZWxl
dGVkICwgb3IgdGhlIG5leHQgb25lIDogIG52bWUxOyAgSSBoYXZlIG5vIGZhcnRoZXIgZXhwbGFu
YXRpb24gd2h5IHRoZSAgT09QUyB3b3VsZCBvY2N1ciBpbiB0aGUgcHJpbnQgc3RhdGVtZW50IHVu
bGVzcyDigJxuYW1l4oCdIHdhcyBudWxsLCAgIGRvIHlvdSA/Cj4+IAo+PiBUaGlzIGRvZXMgbm90
IHJlYWx0ZSB0byB0aGUgZGV2aWNlIG5hbWUsIGJ1dCByYXRoZXIgdG8gdGhlIGRldmljZSBwYXJl
bnQKPj4gdGhhdCBzZWVtcyB0byBiZSBOVUxMICh3ZSBoYXZlIGEgdmFsaWQga29iaiBidXQgaXQg
cG9pbnRzIHRvIGEgTlVMTAo+PiBwYXJlbnQuIFRoaXMgdXN1YWxseSBoYXBwZW5zIGluIGEgdXNl
LWFmdGVyLWZyZWUgY29uZGl0aW9ucy4KPj4gCj4+IFdoYXQgaXMgdGhlIEZDIGRldmljZSBwYXJl
bnQ/IHRoZSBGQyBhZGFwdGVyIGRldmljZT8gb3IgdGhlIC9kZXYvbnZtZS1mYWJyaWNzIGRldmlj
ZT8KPiAKPiBXYXJuaW5nOiAgIHRyYWNraW5nIGRvd24gYW4gaXNzdWUgYmFzZWQgb24gMiBpbmRp
dmlkdWFsIGNvbW1pdHMgdGhhdCB3ZXJlIHB1bGxlZCBpbnRvIGEga2VybmVsIGJhc2UgdGhhdCBk
b2VzIG5vdCBjb250YWluIHRoZSBvdGhlciBjb21taXRzIGZvdW5kIGluIHRoZSB1cHN0cmVhbSB0
cmVlLCBpcyBkYW5nZXJvdXMuCgogWWVzLiBJIGNhbiBzZWUgdGhhdCA7IAo+IAo+IEl0J3MgcmVj
b21tZW5kZWQgdGhhdCB0aGUgaXNzdWUgYmUgcmVwb3J0ZWQgd2hlbiBydW5uaW5nIHdoYXQgaXMg
aW4gdGhlIHVwc3RyZWFtIHRyZWUgKGF0IGxlYXN0IHRoZSBpbmZyYWRlYWQgYnJhbmNoKS4KPiAK
PiBBbHNvLCByZWxhdGl2ZSB0bzoKPiA+ICBJdCBhcHBlYXJzIHRvIG1lIHRoZSBjYWxsZXIgbnZt
ZV9mcmVlX2N0cmwoKSAgaXMgdXNpbmcgYSBkZXZpY2UgbmFtZSB0aGF0IGhhcyBiZWVuIGNsZWFy
ZWQgOgo+ID4gICAgICAgc3lzZnNfcmVtb3ZlX2xpbmsoJnN1YnN5cy0+ZGV2LmtvYmosIGRldl9u
YW1lKGN0cmwtPmRldmljZSkpOwo+ID4gIFRoZSBuYW1lIHBhc3NlZCBpbiBpcyBudWxsIGluIGtl
cm5mc19yZW1vdmVfYnlfbmFtZV9ucygpIDoKPiA+Cj4gPiAgaWYgKCFwYXJlbnQpIHsKPiA+ICAg
ICAgV0FSTigxLCBLRVJOX1dBUk5JTkcgImtlcm5mczogY2FuIG5vdCByZW1vdmUgJyVzJywgbm8g
ZGlyZWN0b3J5XG4iLCAgIG5hbWUpOwo+IAo+IFRoaXMgaXMgdGhlIG52bWUgY29udHJvbGxlciBk
ZXZpY2UsIHJlZmVyZW5jaW5nIGl0J3Mgb3duIGRldmljZSBzdHJ1Y3Qgd2hpY2ggaXQgY3JlYXRl
ZCBpdCdzIG93biBuYW1lIGZvciwgd2hpY2ggaGFzIGl0cyBwYXJlbnQgc2V0IHRvIHRoZSB0aGUg
bnZtZl9kZXZpY2UgcGFzc2VkIHRocm91Z2ggbnZtZl9jcmVhdGVfY3RybCgpIHRvIHRoZSB0cmFu
c3BvcnQgb3BzLT5jcmVhdGVfY3RybCgpIHRvIG52bWVfaW5pdF9jdHJsKCkuCj4gCj4gCj4+IAo+
Pj4gSGVyZSBpcyB0aGUgcHJlYW1ibGUgdG8gdGhlIHByZXZpb3VzIHN0YWNrIHRyYWNlLgo+Pj4g
Cj4+PiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiBudm1lIG52bWUwOiBO
Vk1FLUZDezB9OiByZXNldDogUmVjb25uZWN0Cj4+PiBhdHRlbXB0IGZhaWxlZCAoLTIyKQo+Pj4g
TWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogbnZtZSBudm1lMDogTlZNRS1G
Q3swfTogTWF4IHJlY29ubmVjdAo+Pj4gYXR0ZW1wdHMgKDYwKSByZWFjaGVkLgo+Pj4gTWF5IDI0
IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogbnZtZSBudm1lMDogUmVtb3ZpbmcgY3Ry
bDogTlFOCj4+PiAibnFuLjE5OTItMDguY29tLm5ldGFwcDpzbi4zZDkwMzdjNTNmZWQxMWU5OTIy
MjAwYTA5ODZhOGI2MDpzdWJzeXN0ZW0ub2xfbnZtZTFfc3MxIiAKPj4+IE1heSAyNCAyMTowOToz
MSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IGtlcm5mczogY2FuIG5vdCByZW1vdmUgJ252bWUwJywg
bm8gZGlyZWN0b3J5Cj4+PiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiAt
LS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4+IE1heSAyNCAyMTowOTozMSBp
bnRlcm9wLTU3LTE2MSBrZXJuZWw6IFdBUk5JTkc6IENQVTogNiBQSUQ6IDE0MjA2IGF0Cj4+PiBm
cy9rZXJuZnMvZGlyLmM6MTQ4MSBrZXJuZnNfcmVtb3ZlX2J5X25hbWVfbnMrMHg3ZS8weDg3Cj4+
PiAKPj4+IFdlIGFyZSBub3Qgc2VlaW5nIGZhaWxvdmVyIHdvcmsgYXQgYWxsIHVzaW5nIHRoZSBs
cGZjIGRyaXZlci4gVGhlIGNvbm5lY3Rpb25zIGFyZSBlc3RhYmxpc2hlZCBvbiBib290LCBidXQg
d2hlbiBvbmUgb2YgdGhlIHBhdGhzIGFyZSBkaXNhYmxlZCBvbiB0aGUgTmV0QXBwIHRhcmdldCB0
aGUgc3lzdGVtIG5ldmVyIGlzIGFibGUgdG8gcmVzdG9yZXMgdGhlIHBhdGhzLgo+PiAKPj4gU28g
SS9PIGZhaWxvdmVyIGlzIG5vdCB3b3JraW5nIHdpdGggbHBmYz8gdGhhdCBzZWVtcyB0byBiZSBh
IGRpZmZlcmVudAo+PiBpc3N1ZSB0byBtZS4gV2hhdCBkbyB5b3UgbWVhbiB0aGF0IHRoZSBOZXRB
cHAgdGFyZ2V0IG5ldmVyIGlzIGFibGUgdG8KPj4gcmVzdG9yZSB0aGUgcGF0aHM/IFRoYXQgaXMg
anVzdCBhbiBleHBsYW5hdGlvbiB0byB3aGF0IHRyaWdnZXJzIHRoZQo+PiBidWcgb3IgaXMgdGhh
dCBzb21laG93IHJlbGF0ZWQ/Cj4gCj4gdG9vIG1hbnkgbGVhcHMgYW5kIGJvdW5kcyBhcmUgYmVp
bmcgc3RhdGVkIHdoZW4gdGhlIGJhc2Ugc291cmNlcyBhcmVuJ3QgY29uc2lzdGVudC4gICBUaGlu
Z3Mgd29yayB3aGVuIGFsbCB0aGUgZGVwZW5kZW5jaWVzIGFyZSBwdXQgdG9nZXRoZXIuICBXaGVu
IGJpdHMgYXJlIGNoZXJyeSBwaWNrZWQgLSBpdCdzIGEgYiojJUAgdG8gZmlndXJlIG91dCB3aGlj
aCBwaWVjZSBpcyBtaXNzaW5nIHRvIGdldCBldmVyeXRoaW5nIHdvcmtpbmcgdG9nZXRoZXIuCj4g
Cj4gLS0gamFtZXMKPiAKPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IExpbnV4LW52bWUgbWFpbGluZyBsaXN0Cj4gTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3Yy
L3VybD91PWh0dHAtM0FfX2xpc3RzLmluZnJhZGVhZC5vcmdfbWFpbG1hbl9saXN0aW5mb19saW51
eC0yRG52bWUmZD1Ed0lHYVEmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVh
cElfSm5FJnI9dDJmUGc5RDg3RjdEOGptMF8zQ0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPUVK
RGZxNVZjeDJ1ZkN2NFNzWjFzNWhuTUd0LTJscnRmUHdDdXVTLWRiaEkmcz12SlZqb3A0Q2NuOE0t
VnhrUTJXd1JFNG5IZHhTMzlxamdBUkRwbnJPV1RJJmU9CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
