Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7282CEFB
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 20:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHksuwJvQ3AmlImoqCfm+y7oIlL1yAgm0UUT23+0PNw=; b=PMF7oFlKkxkiKG
	ZEK3pckZYRemc95rWppBBM5AIIsfhXTEAep896wyubGQ+M3LiboWoG1gMQwPW4lJczeXWbhD1E8cx
	EZomrS7IkdkKcFBXuwELDkSmjzRjgJZdQV5SCzYr8HEzDJTOR5vz4ZPDqaZgCc10jOgwBBtBbKyp7
	K7thMsQ+4F6UBiyQy1cX9ZLbBF86+D/bhKtYN+pRwi16iIXH+vJ+yI50ttKEBYXYvpQRrS/9gGNOp
	j/AP1LJjEHtphuQ/fD1Ok5apkmq/psOC0/Y5rANUmNsquxmwe+k0xnK9xYROoiFHnWq0Q9+8w+4QK
	jz+Cu9vlzyOTbHGndr8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhFc-0000ZE-Ol; Tue, 28 May 2019 18:55:08 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhFT-0000Kv-Vx
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 18:55:01 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SIsCi9105980
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 18:54:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : subject : date : references :
 to : in-reply-to : message-id; s=corp-2018-07-02;
 bh=ec2Lnqriznzsgk843eqsPU5QniYztj55iR6TDMq3y1o=;
 b=3+L1aq37DjSTbWHzkMMgTwKZekB9k7489KuwWC5rsjSILvKgyZrRvpulaYLBcjpNaj9s
 ahYmZp4LfnJeke0FUMzotYfaXHS224oF1QwEb4ydjBemOmUn4e1wydsq1sySDohDDSkq
 pn+TycRqXLPrDvRPyN5L0E61Lqrd9Md4NmnlPPUQCpjPDgrfjceZ9gXiRgeEc4nK59LX
 joRqn0BntiO46U53dpyIdvJVe/HrlCwm4DWnHNhQiIqTG1G25K5+GeOLUxcVdzgdH2Un
 4f3bqVQIPdlBsRYUHxFHbQFQsSAFVEPTtZo2rOVS60UTcuOHTOncNYCDETYN4xp5Y02t 5g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2spxbq55ch-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 18:54:52 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SIsLiR145392
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 18:54:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2sqh739htu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 18:54:52 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4SIsoJM016378
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 18:54:51 GMT
Received: from dhcp-10-154-145-81.vpn.oracle.com (/10.154.145.81)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 May 2019 11:54:50 -0700
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [GIT PULL] nvme fixes for 5.2
Date: Tue, 28 May 2019 13:54:49 -0500
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
To: linux-nvme@lists.infradead.org
In-Reply-To: <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
Message-Id: <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905280118
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905280118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_115500_193091_ACBC83A5 
X-CRM114-Status: GOOD (  18.81  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyOCwgMjAxOSwgYXQgMTE6MjggQU0sIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5k
b25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPiAKPiBPbiA1LzE2LzE5IDM6MjUgQU0sIENocmlz
dG9waCBIZWxsd2lnIHdyb3RlOgo+PiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0
IDkzNmIzM2Y3MjQzZmExZTU0YzhmNGYyZmViZDM0NzJjYzAwZTY2ZmQ6Cj4+ICAgYnJkOiBhZGQg
Y29uZF9yZXNjaGVkIHRvIGJyZF9mcmVlX3BhZ2VzICgyMDE5LTA1LTA5IDEyOjUxOjI3IC0wNjAw
KQo+PiBhcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPj4gICBnaXQ6Ly9n
aXQuaW5mcmFkZWFkLm9yZy9udm1lLmdpdCBudm1lLTUuMgo+PiBmb3IgeW91IHRvIGZldGNoIGNo
YW5nZXMgdXAgdG8gMWIxMDMxY2E2M2IyY2UxZDNiNjY0YjM1Yjc3ZWM5NGU0NTg2OTNlOToKPj4g
ICBudm1lOiB2YWxpZGF0ZSBjbnRsaWQgZHVyaW5nIGNvbnRyb2xsZXIgaW5pdGlhbGlzYXRpb24g
KDIwMTktMDUtMTQgMTc6MTk6NTAgKzAyMDApCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gQ2hhaXRhbnlhIEt1bGth
cm5pICgxKToKPj4gICAgICAgbnZtZTogdHJhY2UgYWxsIGFzeW5jIG5vdGljZSBldmVudHMKPj4g
Q2hyaXN0b3BoIEhlbGx3aWcgKDIpOgo+PiAgICAgICBudm1lOiBjaGFuZ2UgbG9ja2luZyBmb3Ig
dGhlIHBlci1zdWJzeXN0ZW0gY29udHJvbGxlciBsaXN0Cj4+ICAgKiogICAgIG52bWU6IHZhbGlk
YXRlIGNudGxpZCBkdXJpbmcgY29udHJvbGxlciBpbml0aWFsaXNhdGlvbgo+PiBHdXN0YXZvIEEu
IFIuIFNpbHZhICgxKToKPj4gICAgICAgbnZtZS1wY2k6IG1hcmsgZXhwZWN0ZWQgc3dpdGNoIGZh
bGwtdGhyb3VnaAo+PiBIYW5uZXMgUmVpbmVja2UgKDIpOgo+PiAgICAgICBudm1lLWZjOiB1c2Ug
c2VwYXJhdGUgd29yayBxdWV1ZSB0byBhdm9pZCB3YXJuaW5nCj4+ICAgICoqICAgbnZtZS1tdWx0
aXBhdGg6IGF2b2lkIGNyYXNoIG9uIGludmFsaWQgc3Vic3lzdGVtIGNudGxpZCBlbnVtZXJhdGlv
bgo+IAo+IAo+IAo+IEhpCj4gIEluIHRlc3RpbmcgdGhlc2UgY29tbWl0cyBkZW5vdGVkIGJ5ICIq
KiIgIEkgZW5jb3VudGVyZWQgYW5vdGhlciBmYWlsdXJlIGR1cmluZyBmYWlsLW92ZXIgb2YgdHdv
IG5hbWUtc3BhY2VzOgo+IAo+IAo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJu
ZWw6IFJJUCAwMDEwOmtlcm5mc19yZW1vdmVfYnlfbmFtZV9ucyArIDB4N2UvMHg4Nwo+IE1heSAy
NCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IFJTUDogMDAxODpmZmZmYjc1Mjg5Mzdm
ZDcwIEVGTEFHUzoKPiAwMDAxMDI0Ngo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBr
ZXJuZWw6IFJBWDogMDAwMDAwMDAwMDAwMDAyYyBSQlg6Cj4gMDAwMDAwMDAwMDAwMDAwMCBSQ1g6
IDAwMDAwMDAwMDAwMDAwMDYKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVs
OiBSRFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOgo+IDAwMDAwMDAwMDAwMDAwODYgUkRJOiBmZmZm
OTg0NTYwMzk2OTMwCj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogUkJQ
OiBmZmZmYjc1Mjg5MzdmZDg4IFIwODoKPiBmZmZmZmZmZjk1OTcyYTg0IFIwOTogMDAwMDAwMDAw
MDAwMTNiMQo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IFIxMDogMDAw
MDAwMDAwMDAwMDAwMCBSMTE6Cj4gMDAwMDAwMDAwMDAwMDAwNCBSMTI6IGZmZmY5ODQ1NWUzYWE2
NDgKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiBSMTM6IGZmZmY5ODQ1
NjA1YmUzMTAgUjE0Ogo+IGZmZmY5ODQ1NWYwM2JjMDAgUjE1OiBmZmZmOTg0NTYwNWJlNzEwCj4g
TWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogRlM6ICAwMDAwMDAwMDAwMDAw
MDAwKDAwMDApCj4gR1M6ZmZmZjk4NDU2MDM4MDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAw
MDAwCj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogQ1M6ICAwMDEwIERT
OiAwMDAwIEVTOiAwMDAwIENSMDoKPiAwMDAwMDAwMDgwMDUwMDMzCj4gTWF5IDI0IDIxOjA5OjMx
IGludGVyb3AtNTctMTYxIGtlcm5lbDogQ1IyOiAwMDAwN2Y0NGZhNzg4MDAwIENSMzoKPiAwMDAw
MDAxMDQ5NDBhMDA1IENSNDogMDAwMDAwMDAwMDc2MDZlMAo+IE1heSAyNCAyMTowOTozMSBpbnRl
cm9wLTU3LTE2MSBrZXJuZWw6IERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6Cj4gMDAwMDAwMDAw
MDAwMDAwMCBEUjI6IDAwMDAwMDAwMDAwMDAwMDAKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01
Ny0xNjEga2VybmVsOiBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2Ogo+IDAwMDAwMDAwZmZmZTBm
ZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwCj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYx
IGtlcm5lbDogUEtSVTogNTU1NTU1NTQKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEg
a2VybmVsOiBDYWxsIFRyYWNlOgo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJu
ZWw6IHN5c2ZzX3JlbW92ZV9saW5rKzB4MTkvMHgyYgo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9w
LTU3LTE2MSBrZXJuZWw6IG52bWVfZnJlZV9jdHJsKzB4YWYvMHgxMjAgW252bWVfY29yZV0KPiBN
YXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiBkZXZpY2VfcmVsZWFzZSsweDM1
LzB4OGIKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2VybmVsOiBrb2JqZWN0X2Ns
ZWFudXArMHg2Ni8weDE3Mgo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6
IGtvYmplY3RfcHV0KzB4MmEvMHg0NQo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBr
ZXJuZWw6IHB1dF9kZXZpY2UrMHgxNy8weDFhCj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTct
MTYxIGtlcm5lbDogbnZtZV9kZWxldGVfY3RybF93b3JrKzB4ODYvMHg5MAo+IFtudm1lX2NvcmVd
Cj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogcHJvY2Vzc19vbmVfd29y
aysweDE2OS8weDNhNgo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IHdv
cmtlcl90aHJlYWQrMHg0ZC8weDNlNQo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBr
ZXJuZWw6IGt0aHJlYWQrMHgxMDUvMHgxMzgKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0x
NjEga2VybmVsOiA/IHJlc2N1ZXJfdGhyZWFkKzB4MzgwLzB4Mzc1Cj4gTWF5IDI0IDIxOjA5OjMx
IGludGVyb3AtNTctMTYxIGtlcm5lbDogPyBrdGhyZWFkX2JpbmQrMHgyMC8weDE1Cj4gTWF5IDI0
IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogcmV0X2Zyb21fZm9yaysweDI0LzB4NDkK
PiAKPiAKPiBEb2VzIHRoaXMgbG9vayBmYW1pbGlhciA/Cj4gCj4gVGhhbmsgeW91LAo+IAo+IEpv
aG4uCj4gCj4gCj4gCgoKICBJdCBhcHBlYXJzIHRvIG1lIHRoZSBjYWxsZXIgbnZtZV9mcmVlX2N0
cmwoKSAgaXMgdXNpbmcgYSBkZXZpY2UgbmFtZSB0aGF0IGhhcyBiZWVuIGNsZWFyZWQgOgoKICAg
IHN5c2ZzX3JlbW92ZV9saW5rKCZzdWJzeXMtPmRldi5rb2JqLCBkZXZfbmFtZShjdHJsLT5kZXZp
Y2UpKTsKCgpUaGUgbmFtZSBwYXNzZWQgaW4gaXMgbnVsbCBpbiBrZXJuZnNfcmVtb3ZlX2J5X25h
bWVfbnMoKSA6CgoKIGlmICghcGFyZW50KSB7CiAgIFdBUk4oMSwgS0VSTl9XQVJOSU5HICJrZXJu
ZnM6IGNhbiBub3QgcmVtb3ZlICclcycsIG5vIGRpcmVjdG9yeVxuIiwgICBuYW1lKTsKCkkgZG9u
4oCZdCBoYXZlIGEgYWN0dWFsIGNyYXNoIGR1bXAgdG8gZXhhbWluZSB0aG91Z2guCgoKCgo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKPiBMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRw
czovL3VybGRlZmVuc2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9aHR0cC0zQV9fbGlzdHMuaW5m
cmFkZWFkLm9yZ19tYWlsbWFuX2xpc3RpbmZvX2xpbnV4LTJEbnZtZSZkPUR3SUNBZyZjPVJvUDFZ
dW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1VQjY1ZWFwSV9KbkUmcj10MmZQZzlEODdGN0Q4am0w
XzNDRzl5b2lJS2RSZzRxY190aEJ3NGJ6TWhjJm09OUd6MGRoamZlajhUa3dSMi1OVWR6T0xISEpX
T0FHU01iV3RrMmhoSkFmNCZzPTJlWTI2OHhROTVXVy1mNHhEM3k3Y2VZYnZMbnZkdy1USDF2d1Rj
OWJ4ZWMmZT0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
