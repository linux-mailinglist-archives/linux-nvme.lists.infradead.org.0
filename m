Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EDC1E345E
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 03:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfYJsTqJvh0P+/LfWO9qqOX2UQjEXwCEZqXsNZcHWbo=; b=MClMGV+CdB57PY
	4NCNxvzb7fyKexLDHfBSdz/Is6986XouN/CoEKTiTpCpQNMf07svnu51oo2XvZOPYyMn0x0Fcnjbg
	73/psunkzM9qGQ2+1EmlmuV1Xh1lz516aW3ERBm3Boc5Y3GnAe/4fcv52Hr2n+olDOFTy6lciEcNv
	eFWgV3PZl881FTc0KDcex5EiI/QaRyIzTO/0oTKT4X4Txkq4OoBF0U20eJnZtwCxv23waX3MBOKPd
	UTLLU2ja/JGydl+z+jp9iGsuGICi+puUqTc6qLrJrAoOP40RIebSCCEAj66V7skYepee3enfccXQu
	ugKyXA6AcaePmcgkfX5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkUq-0002Gw-QZ; Wed, 27 May 2020 01:04:40 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkUl-0002G5-K5
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 01:04:37 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R0vip7141268;
 Wed, 27 May 2020 01:04:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=vZ5b0f2/rmvLxXSGSIHrI9H77/UYsodJDiVjeMUUGjc=;
 b=LCJB0Or2Fv1+KC/thVfxKGn2b/dL8DP1AhVpr19vXYrwzxErNSeZZRFrgpx+PKS1k3t+
 wkochpmLnHsKuHMDcj6Q9zeZY+xIFoIx8IspIT6pgoc+sfja0YfeBso1+fY+wMjyBHaN
 kgssW0rmAeEM7WePH6ppCOcXB4M/Ealy6VzecAXe9vAKET2l9cYP3naoMWRh4WrAZoJA
 npSIl52ycdDiwaE7/SU9ZAQ456+mraTJiefvJVpeS2yR/aUUIboDffqK7VeOsyMuRDCz
 nmtECVEK3IE7mXVJ3oFAaJXjVGGOjfL+ZPwF+HGUPDDNsMmNvDpbXQXbhv969FgMnzAe AQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 318xbjvte8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 01:04:30 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R0vYTu130032;
 Wed, 27 May 2020 01:04:29 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 317dktfahd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 01:04:29 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04R14SeR008300;
 Wed, 27 May 2020 01:04:28 GMT
Received: from [10.159.159.251] (/10.159.159.251)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 May 2020 18:04:28 -0700
Subject: Re: nvme double __blk_mq_complete_request() bugs
To: Keith Busch <kbusch@kernel.org>
References: <c77b0998-5112-4d6b-b51c-41d2b901009d@default>
 <86a0321e-d260-ef8c-db9f-b804fc92c670@grimberg.me>
 <49f32df9-81a9-4c15-9950-aceff8fb291e@oracle.com>
 <20200525164516.GC73686@C02WT3WMHTD6>
From: Dongli Zhang <dongli.zhang@oracle.com>
Message-ID: <d5c51f9c-3706-bc22-1a67-3695880d4918@oracle.com>
Date: Tue, 26 May 2020 18:04:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525164516.GC73686@C02WT3WMHTD6>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=0 mlxscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270002
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005270002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180435_754295_BF6DAF2B 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgS2VpdGgsCgpPbiA1LzI1LzIwIDk6NDUgQU0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+IE9uIFN1
biwgTWF5IDI0LCAyMDIwIGF0IDA3OjMzOjAyQU0gLTA3MDAsIERvbmdsaSBaaGFuZyB3cm90ZToK
Pj4+PiBBZnRlciBjb2RlIGFuYWx5c2lzLCBJIHRoaW5rIHRoaXMgaXMgZm9yIG52bWUtcGNpIGFz
IHdlbGwuCj4+Pj4KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbnZtZV9wcm9jZXNzX2NxKCkK
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gbnZtZV9oYW5kbGVfY3FlKCkKPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gbnZtZV9lbmRfcmVxdWVzdCgpCj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0+IGJsa19tcV9jb21wbGV0ZV9yZXF1ZXN0KCkK
Pj4+PiBudm1lX3Jlc2V0X3dvcmsoKQo+Pj4+IC0+IG52bWVfZGV2X2Rpc2FibGUoKQo+Pj4+IMKg
wqDCoCAtPiBudm1lX3JlYXBfcGVuZGluZ19jcWVzKCkKPj4+PiDCoMKgwqDCoMKgwqAgLT4gbnZt
ZV9wcm9jZXNzX2NxKCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gbnZtZV9oYW5kbGVfY3Fl
KCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gbnZtZV9lbmRfcmVxdWVzdCgpCj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0+IGJsa19tcV9jb21wbGV0ZV9yZXF1
ZXN0KCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLT4gX19ibGtf
bXFfY29tcGxldGVfcmVxdWVzdCgpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0+IF9fYmxrX21xX2NvbXBsZXRlX3JlcXVlc3QoKQo+Pj4KPj4+IG52bWVfZGV2
X2Rpc2FibGUgd2lsbCBmaXJzdCBkaXNhYmxlIHRoZSBxdWV1ZXMgYmVmb3JlIHJlYXBpbmcgdGhl
IHBlbmRpbmcgY3FlcyBzbwo+Pj4gaXQgc2hvdWxkbid0IGhhdmUgdGhpcyBpc3N1ZS4KPj4+Cj4+
Cj4+IFdvdWxkIHlvdSBtaW5kIGhlbHAgZXhwbGFpbiBob3cgbnZtZV9kZXZfZGlzYWJsZSgpIHdv
dWxkIGF2b2lkIHRoaXMgaXNzdWU/Cj4+Cj4+IG52bWVfZGV2X2Rpc2FibGUoKSB3b3VsZDoKPj4K
Pj4gMS4gZnJlZXplIGFsbCB0aGUgcXVldWVzIHNvIHRoYXQgbmV3IHJlcXVlc3Qgd291bGQgbm90
IGVudGVyIGFuZCBzdWJtaXQKPj4gMi4gTk9UIHdhaXQgZm9yIGZyZWV6aW5nIGR1cmluZyBsaXZl
IHJlc2V0IHNvIHRoYXQgcS0+cV91c2FnZV9jb3VudGVyIGlzIG5vdAo+PiBndWFyYW50ZWVkIHRv
IGJlIHplcm8uCj4+IDMuIHF1aWVzY2UgYWxsIHRoZSBxdWV1ZXMgc28gdGhhdCBuZXcgcmVxdWVz
dCB3b3VsZCBub3QgZGlzcGF0Y2gKPj4gNC4gZGVsZXRlIHRoZSBxdWV1ZSBhbmQgZnJlZSBpcnEK
Pj4KPj4gSG93ZXZlciwgSSBkbyBub3QgZmluZCBhIG1lY2hhbmlzbSB0byBwcmV2ZW50IGlmIGEg
bnZtZV9lbmRfcmVxdWVzdCgpIGlzIGFscmVhZHkKPj4gaW4gcHJvZ3Jlc3MuCj4+Cj4+IEUuZy4s
IHN1cHBvc2UgX19ibGtfbXFfY29tcGxldGVfcmVxdWVzdCgpIGlzIGFscmVhZHkgdHJpZ2dlcmVk
IG9uIGNwdSAzIGFuZAo+PiB3YWl0aW5nIGZvciBpdHMgZmlyc3QgbGluZSAiV1JJVEVfT05DRShy
cS0+c3RhdGUsIE1RX1JRX0NPTVBMRVRFKSIgdG8gYmUKPj4gZXhlY3V0ZWQgLi4uIHdoaWxlIGFu
b3RoZXIgY3B1IGlzIGRvaW5nIGxpdmUgcmVzZXQuIEkgZG8gbm90IHNlZSBob3cgdG8gcHJldmVu
dAo+PiBzdWNoIHJhY2UuCj4gCj4gVGhlIHF1ZXVlcyBhbmQgdGhlaXIgaW50ZXJydXB0cyBhcmUg
dG9ybiBhbmQgc3luY2hyb25pemVkIGRvd24gYmVmb3JlIHRoZSByZXNldAo+IHJlY2xhaW1zIHVu
Y29tcGxldGVkIHJlcXVlc3RzLiBUaGVyZSdzIG5vIG90aGVyIGNvbnRleHQgdGhhdCBjYW4gYmUg
cnVubmluZwo+IGNvbXBsZXRpb25zIGF0IHRoYXQgcG9pbnQuCgpUaGFuayB5b3UgdmVyeSBtdWNo
IGZvciB0aGUgY2xhcmlmaWNhdGlvbi4KClRoZXJlIGFyZSAzIGNhc2VzIGZvciBhIG52bWUgcmVx
dWVzdCB0byBjb21wbGV0ZS4KCjEuIEluIHRoZSBjb250ZXh0IG9mIGlycS4KCldoaWxlIEkgZGlk
IG5vdCB0ZXN0IHdpdGggc291cmNlIGNvZGUsIEkgdGhpbmsgaXQgaXMgYmVjYXVzZQpudm1lX3N1
c3BlbmRfcXVldWUoKS0tPnBjaV9mcmVlX2lycSgpIHdoaWNoIHdvdWxkIHdhaXQgZm9yIGFsbCBp
bmZsaWdoIElSUQpoYW5kbGVyIHdpdGggX19zeW5jaHJvbml6ZV9oYXJkaXJxKCkuCgoyLiBJbiB0
aGUgY29udGV4dCBvZiBpcnEgdGhyZWFkIHdoZW4gdGhyZWFkZWQgaXJxIGlzIGludm9sdmVkLgoK
VGhlIG52bWVfc3VzcGVuZF9xdWV1ZSgpLS0+cGNpX2ZyZWVfaXJxKCkgd291bGQgZmluYWxseSB3
YWl0IGZvciB0aGUgc3RvcCBvZiBpcnEKdGhyZWFkIGJ5IGt0aHJlYWRfc3RvcChhY3Rpb24tPnRo
cmVhZCkuIFRoZXJlZm9yZSwgdGhlcmUgaXMgbm90IGFueSBJUlEgaGFuZGxlcgpydW5uaW5nIGlu
IGtlcm5lbCB0aHJlYWQuCgozLiBJbiB0aGUgY29udGV4dCBvZiBibGtfcG9sbCgpLgoKSSBkbyBu
b3QgZmluZCBhIG1lY2hhbmlzbSB0byBwcm90ZWN0IHRoZSByYWNlIGluIHRoaXMgY2FzZS4KCkJ5
IGFkZGluZyBtZGVsYXkoKSB0byBjb2RlLCBJIGFtIGFibGUgdG8gcmVwcm9kdWNlIHRoZSBiZWxv
dyByYWNlIG9uIHB1cnBvc2UuCgoKWyAgMjM1LjIyMzk3NV0gPT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ClsgIDIzNS4yMjQ4
NzhdIEJVRzogS0FTQU46IG51bGwtcHRyLWRlcmVmIGluIGJsa19tcV9mcmVlX3JlcXVlc3QrMHgz
NjMvMHg1MTAKWyAgMjM1LjIyNTY3NF0gV3JpdGUgb2Ygc2l6ZSA0IGF0IGFkZHIgMDAwMDAwMDAw
MDAwMDE5OCBieSB0YXNrIHN3YXBwZXIvMy8wClsgIDIzNS4yMjY0NTZdClsgIDIzNS4yMjY3NzJd
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQpbICAyMzUuMjI3NjMzXSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZl
cmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAxOTgKWyAgMjM1LjIyODQ0N10gI1BGOiBzdXBl
cnZpc29yIHdyaXRlIGFjY2VzcyBpbiBrZXJuZWwgbW9kZQpbICAyMzUuMjI5MDYyXSAjUEY6IGVy
cm9yX2NvZGUoMHgwMDAyKSAtIG5vdC1wcmVzZW50IHBhZ2UKWyAgMjM1LjIyOTY2N10gUEdEIDAg
UDREIDAKWyAgMjM1LjIyOTk3Nl0gT29wczogMDAwMiBbIzFdIFNNUCBLQVNBTiBQVEkKWyAgMjM1
LjIzMDQ1MV0gQ1BVOiAzIFBJRDogMCBDb21tOiBzd2FwcGVyLzMgVGFpbnRlZDogRyAgICBCCjUu
Ny4wLXJjNSsgIzEKWyAgMjM1LjIzMTM0N10gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQ
QyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MKcmVsLTEuMTIuMC01OS1nYzliYTUyNzZlMzIx
LXByZWJ1aWx0LnFlbXUub3JnIDA0LzAxLzIwMTQKWyAgMjM1LjIzMjY5Ml0gUklQOiAwMDEwOmJs
a19tcV9mcmVlX3JlcXVlc3QrMHgzNjcvMHg1MTAKWyAgMjM1LjIzMzI4Nl0gQ29kZTogODkgZGYg
NWIgNWQgNDEgNWMgNDEgNWQgNDEgNWUgNDEgNWYgZTkgYTIgZGMgZmYgZmYgNDggOGQgYmEKOTgg
MDEgMDAgMDAgYmUgMDQgMDAgMDAgMDAgNDggODkgMTQgMjQgZTggZmQgNjkgOWEgZmYgNDggOGIg
MTQgMjQgPGYwPiBmZiA4YSA5OAowMSAwMCAwMCBlOSBlMiBmZSBmZiBmZiA0OCA4MyBjNCAwOCA0
OCA4OSBlZiBiZSAwMyAwMApbICAyMzUuMjM1NTAzXSBSU1A6IDAwMTg6ZmZmZjg4ODFmNzM4OWJl
MCBFRkxBR1M6IDAwMDEwMDQ2ClsgIDIzNS4yMzYxMTRdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBS
Qlg6IGZmZmY4ODgxZjIxYjk2ODAgUkNYOiBmZmZmZmZmZjgxNmUwNWIxClsgIDIzNS4yMzY5NDFd
IFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwNDYgUkRJOiAwMDAwMDAw
MDAwMDAwMDQ2ClsgIDIzNS4yMzc3NzBdIFJCUDogMDAwMDAwMDAwMDAwMDAwMSBSMDg6IGZmZmZm
YmZmZjBhZjU4NjkgUjA5OiBmZmZmZmJmZmYwYWY1ODY5ClsgIDIzNS4yMzg1OThdIFIxMDogZmZm
ZmZmZmY4NTdhYzM0NyBSMTE6IGZmZmZmYmZmZjBhZjU4NjggUjEyOiBmZmZmODg4MWYyMWI5Njlj
ClsgIDIzNS4yMzk0MjRdIFIxMzogZmZmZjg4ODFmMGY2MjczOCBSMTQ6IGZmZmZlOGZmZmZkODg0
YzAgUjE1OiBmZmZmODg4MWYyMWI5Njk4ClsgIDIzNS4yNDAyNTVdIEZTOiAgMDAwMDAwMDAwMDAw
MDAwMCgwMDAwKSBHUzpmZmZmODg4MWY3MzgwMDAwKDAwMDApCmtubEdTOjAwMDAwMDAwMDAwMDAw
MDAKWyAgMjM1LjI0MTE5Ml0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAw
MDA4MDA1MDAzMwpbICAyMzUuMjQxODYzXSBDUjI6IDAwMDAwMDAwMDAwMDAxOTggQ1IzOiAwMDAw
MDAwMWViODg2MDA0IENSNDogMDAwMDAwMDAwMDM2MGVlMApbICAyMzUuMjQyNjk1XSBEUjA6IDAw
MDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAwMDAwMDAwMDAwMDAw
MApbICAyMzUuMjQzNTIzXSBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUw
ZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMApbICAyMzUuMjQ0MzQ5XSBDYWxsIFRyYWNlOgpbICAy
MzUuMjQ0NjQ1XSAgPElSUT4KWyAgMjM1LjI0NDg5MF0gIGJsa19tcV9jb21wbGV0ZV9yZXF1ZXN0
KzB4MjY2LzB4NDYwClsgIDIzNS4yNDU0MzJdICBudm1ldF9yZXFfY29tcGxldGUrMHhkLzB4YjAK
WyAgMjM1LjI0NTg5OF0gIGlvbWFwX2Rpb19iaW9fZW5kX2lvKzB4MzM2LzB4NDgwClsgIDIzNS4y
NDY0MDldICBibGtfdXBkYXRlX3JlcXVlc3QrMHgzMjAvMHg5NjAKWyAgMjM1LjI0NjkwNF0gIGJs
a19tcV9lbmRfcmVxdWVzdCsweDRlLzB4NGQwClsgIDIzNS4yNDczOTFdICBibGtfbXFfY29tcGxl
dGVfcmVxdWVzdCsweDI2Ni8weDQ2MApbICAyMzUuMjQ3OTM3XSAgdmlydGJsa19kb25lKzB4MTY0
LzB4MzAwClsgIDIzNS4yNDgzNzJdICA/IGxvb3BfcXVldWVfd29yay5jb2xkLjQ0KzB4NWUvMHg1
ZQpbICAyMzUuMjQ4OTE1XSAgPyByY3VfYWNjZWxlcmF0ZV9jYnMrMHg1ZC8weDFhNzAKWyAgMjM1
LjI0OTQyOV0gID8gdmlydHF1ZXVlX2dldF91c2VkX2FkZHIrMHgxNDAvMHgxNDAKWyAgMjM1LjI0
OTk5MF0gIHZyaW5nX2ludGVycnVwdCsweDE2ZC8weDI4MApbICAyMzUuMjUwNDU0XSAgX19oYW5k
bGVfaXJxX2V2ZW50X3BlcmNwdSsweGRkLzB4NDcwClsgIDIzNS4yNTEwMTBdICBoYW5kbGVfaXJx
X2V2ZW50X3BlcmNwdSsweDZlLzB4MTMwClsgIDIzNS4yNTE1NDRdICA/IHJjdV9hY2NlbGVyYXRl
X2Nic191bmxvY2tlZCsweDExMC8weDExMApbICAyMzUuMjUyMTQ1XSAgPyBfX2hhbmRsZV9pcnFf
ZXZlbnRfcGVyY3B1KzB4NDcwLzB4NDcwClsgIDIzNS4yNTI3MjldICA/IF9yYXdfc3Bpbl9sb2Nr
KzB4NzUvMHhkMApbICAyMzUuMjUzMTgxXSAgPyBfcmF3X3dyaXRlX2xvY2srMHhkMC8weGQwClsg
IDIzNS4yNTM2NDVdICBoYW5kbGVfaXJxX2V2ZW50KzB4YzIvMHgxNTgKWyAgMjM1LjI1NDEwN10g
IGhhbmRsZV9lZGdlX2lycSsweDFlOS8weDdhMApbICAyMzUuMjU0NTcyXSAgZG9fSVJRKzB4OTQv
MHgxZTAKWyAgMjM1LjI1NDkzNl0gIGNvbW1vbl9pbnRlcnJ1cHQrMHhmLzB4ZgpbICAyMzUuMjU1
MzY4XSAgPC9JUlE+ClsgIDIzNS4yNTU2MjldIFJJUDogMDAxMDpuYXRpdmVfc2FmZV9oYWx0KzB4
ZS8weDEwClsgIDIzNS4yNTYxNjJdIENvZGU6IGU5IGYyIGZlIGZmIGZmIDQ4IDg5IGRmIGU4IDJm
IGRjIGY4IGZkIGViIGE0IGNjIGNjIGNjIGNjIGNjCmNjIGNjIGNjIGNjIGNjIGNjIGNjIGNjIGU5
IDA3IDAwIDAwIDAwIDBmIDAwIDJkIGE0IDdkIDRhIDAwIGZiIGY0IDxjMz4gOTAgZTkgMDcKMDAg
MDAgMDAgMGYgMDAgMmQgOTQgN2QgNGEgMDAgZjQgYzMgY2MgY2MgNDEgNTYgNDEgNTUKWyAgMjM1
LjI1ODMxNF0gUlNQOiAwMDE4OmZmZmY4ODgxZjYxZmZkZDggRUZMQUdTOiAwMDAwMDI0NiBPUklH
X1JBWDoKZmZmZmZmZmZmZmZmZmZkZQpbICAyMzUuMjU5MTk0XSBSQVg6IGZmZmZmZmZmODNiYzU5
ZjAgUkJYOiBkZmZmZmMwMDAwMDAwMDAwIFJDWDogZmZmZmZmZmY4M2JjNjYzOQpbICAyMzUuMjYw
MDIyXSBSRFg6IDFmZmZmMTEwM2VjMzk4ZTggUlNJOiAwMDAwMDAwMDAwMDAwMDA4IFJESTogZmZm
Zjg4ODFmNjFjYzc0MApbICAyMzUuMjYwODUwXSBSQlA6IDAwMDAwMDAwMDAwMDAwMDMgUjA4OiBm
ZmZmZWQxMDNlYzM5OGU5IFIwOTogZmZmZmVkMTAzZWMzOThlOQpbICAyMzUuMjYxNjgxXSBSMTA6
IGZmZmY4ODgxZjYxY2M3NDcgUjExOiBmZmZmZWQxMDNlYzM5OGU4IFIxMjogZmZmZmZmZmY4NGU1
YzRjMApbICAyMzUuMjYyNTA4XSBSMTM6IDAwMDAwMDAwMDAwMDAwMDMgUjE0OiAxZmZmZjExMDNl
YzNmZmM0IFIxNTogMDAwMDAwMDAwMDAwMDAwMApbICAyMzUuMjYzMzM4XSAgPyBfX2NwdWlkbGVf
dGV4dF9zdGFydCsweDgvMHg4ClsgIDIzNS4yNjM4MzJdICA/IGRlZmF1bHRfaWRsZV9jYWxsKzB4
MjkvMHg2MApbICAyMzUuMjY0MzE1XSAgPyB0c2NfdmVyaWZ5X3RzY19hZGp1c3QrMHg2OC8weDFm
MApbICAyMzUuMjY0ODQ5XSAgZGVmYXVsdF9pZGxlKzB4MWEvMHgyYjAKWyAgMjM1LjI2NTI3M10g
IGRvX2lkbGUrMHgyZmQvMHgzYjAKWyAgMjM1LjI2NTY1OF0gID8gYXJjaF9jcHVfaWRsZV9leGl0
KzB4NDAvMHg0MApbICAyMzUuMjY2MTUxXSAgPyBzY2hlZHVsZV9pZGxlKzB4NTYvMHg5MApbICAy
MzUuMjY2NTk1XSAgY3B1X3N0YXJ0dXBfZW50cnkrMHgxNC8weDIwClsgIDIzNS4yNjcwNTddICBz
dGFydF9zZWNvbmRhcnkrMHgyYTYvMHgzNDAKWyAgMjM1LjI2NzUyMl0gID8gc2V0X2NwdV9zaWJs
aW5nX21hcCsweDFmYjAvMHgxZmIwClsgIDIzNS4yNjgwNjZdICBzZWNvbmRhcnlfc3RhcnR1cF82
NCsweGI2LzB4YzAKWyAgMjM1LjI2ODU2MV0gTW9kdWxlcyBsaW5rZWQgaW46ClsgIDIzNS4yNjg5
MjldIENSMjogMDAwMDAwMDAwMDAwMDE5OApbICAyMzUuMjY5MzMwXSAtLS1bIGVuZCB0cmFjZSBm
OGZhODIzNzA1YTNkYmU3IF0tLS0KWyAgMjM1LjI2OTg3NV0gUklQOiAwMDEwOmJsa19tcV9mcmVl
X3JlcXVlc3QrMHgzNjcvMHg1MTAKWyAgMjM1LjI3MDQ2Nl0gQ29kZTogODkgZGYgNWIgNWQgNDEg
NWMgNDEgNWQgNDEgNWUgNDEgNWYgZTkgYTIgZGMgZmYgZmYgNDggOGQgYmEKOTggMDEgMDAgMDAg
YmUgMDQgMDAgMDAgMDAgNDggODkgMTQgMjQgZTggZmQgNjkgOWEgZmYgNDggOGIgMTQgMjQgPGYw
PiBmZiA4YSA5OAowMSAwMCAwMCBlOSBlMiBmZSBmZiBmZiA0OCA4MyBjNCAwOCA0OCA4OSBlZiBi
ZSAwMyAwMApbICAyMzUuMjcyNjIyXSBSU1A6IDAwMTg6ZmZmZjg4ODFmNzM4OWJlMCBFRkxBR1M6
IDAwMDEwMDQ2ClsgIDIzNS4yNzMyMzBdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY4
ODgxZjIxYjk2ODAgUkNYOiBmZmZmZmZmZjgxNmUwNWIxClsgIDIzNS4yNzQwNjNdIFJEWDogMDAw
MDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwNDYgUkRJOiAwMDAwMDAwMDAwMDAwMDQ2
ClsgIDIzNS4yNzQ4OTBdIFJCUDogMDAwMDAwMDAwMDAwMDAwMSBSMDg6IGZmZmZmYmZmZjBhZjU4
NjkgUjA5OiBmZmZmZmJmZmYwYWY1ODY5ClsgIDIzNS4yNzU3MTddIFIxMDogZmZmZmZmZmY4NTdh
YzM0NyBSMTE6IGZmZmZmYmZmZjBhZjU4NjggUjEyOiBmZmZmODg4MWYyMWI5NjljClsgIDIzNS4y
NzY1NDVdIFIxMzogZmZmZjg4ODFmMGY2MjczOCBSMTQ6IGZmZmZlOGZmZmZkODg0YzAgUjE1OiBm
ZmZmODg4MWYyMWI5Njk4ClsgIDIzNS4yNzczNzFdIEZTOiAgMDAwMDAwMDAwMDAwMDAwMCgwMDAw
KSBHUzpmZmZmODg4MWY3MzgwMDAwKDAwMDApCmtubEdTOjAwMDAwMDAwMDAwMDAwMDAKWyAgMjM1
LjI3ODMwN10gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAz
MwpbICAyMzUuMjc4OTc3XSBDUjI6IDAwMDAwMDAwMDAwMDAxOTggQ1IzOiAwMDAwMDAwMWViODg2
MDA0IENSNDogMDAwMDAwMDAwMDM2MGVlMApbICAyMzUuMjc5ODA1XSBEUjA6IDAwMDAwMDAwMDAw
MDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMApbICAyMzUu
MjgwNjMyXSBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzog
MDAwMDAwMDAwMDAwMDQwMApbICAyMzUuMjgxNDU5XSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2lu
ZzogRmF0YWwgZXhjZXB0aW9uIGluIGludGVycnVwdApbICAyMzUuMjgyNDc0XSBLZXJuZWwgT2Zm
c2V0OiAweDQwMDAwMCBmcm9tIDB4ZmZmZmZmZmY4MTAwMDAwMCAocmVsb2NhdGlvbgpyYW5nZTog
MHhmZmZmZmZmZjgwMDAwMDAwLTB4ZmZmZmZmZmZiZmZmZmZmZikKWyAgMjM1LjI4MzY5NV0gLS0t
WyBlbmQgS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEZhdGFsIGV4Y2VwdGlvbiBpbiBpbnRl
cnJ1cHQKXS0tLQoKCgpJIGhhdmUgc2VudCB0aGUgYmVsb3cgZm9yIGZlZWRiYWNrLgoKaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbnZtZS8yMDIwMDUyNzAwNDk1NS4xOTQ2My0xLWRvbmds
aS56aGFuZ0BvcmFjbGUuY29tL1QvI3UKClRoYW5rIHlvdSB2ZXJ5IG11Y2ghCgpEb25nbGkgWmhh
bmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
