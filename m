Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0062F17EB87
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Mar 2020 22:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ul24gzfJlpMXK5OAU7a2ZnK4fyFrAjZtrPr+QGg9PKQ=; b=LYmRoy1DUU2KVm
	FPztjn3g2wt65rH6tIIyE35fhmhZa7olM5qvOHnRaM35Hpt0+4ppSIvMe1oRe07OvvFtgRbntnrvJ
	+msY6Vvixwc7ULOq29Ozba9MTc4YQC06kQzXoCrwWd3wbiqUPFKcUL8X1r8HBKIR/uuU27dyziX8G
	fuXgZV+yeCeHjL+E9JpPXytlf3A8jpl2I6eEknemNFFjpGUKFTS9z/438HMUEpH272eNLNNb4H2jB
	rTjrgQnzhMicMX43/BnLGQGDdMkipK/Va5RRwfxFoYJE9hnyGJM936YVj7nTwe/XkGDjc+v95Fko1
	78Msyp4sBeROAWsk6YcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBQHA-0001zo-T2; Mon, 09 Mar 2020 21:49:28 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBQH6-0001yz-9p
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 21:49:25 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029LiKoj119233
 for <linux-nvme@lists.infradead.org>; Mon, 9 Mar 2020 21:49:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : subject :
 message-id : date : mime-version : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=wSMaJrOuQNVT7l3kFqi2YQ4Mdr4A9oQXqkJJA3TKxH8=;
 b=alB1eT0GQ4Jv49gQzXMwYr2PAHXe99XFMLYhX+YabCYAO7j2B16lPpci9AnRHCos+tcz
 S+e/L9OJKH7YrvwQECz74lu3HByeWDUTjdE5I2pSlZayHPlllALHYMQUjdqgj4JbZT3/
 ofj35dk7bHOEOo0uIKrpAz2M6PkzzClV3S643jqQ3Apk8NKrUTu3o80H99gN4h2BiD4b
 PSwvk44rGZsDNb0MKblWseWqIMM+bcLGU5WtNBec3SvxgqiBwKxZFRnCkXZ37jElS4I9
 gYSN07K86bCSDNFfJWKTULGpZ7BZs/HjgmbzKKlSBZsI7ZWRI5rzouMt+8GheBbOO3MJ Dw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2ym3jqhtbj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 09 Mar 2020 21:49:15 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029LgrSX164582
 for <linux-nvme@lists.infradead.org>; Mon, 9 Mar 2020 21:49:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2ymnb13ggj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 09 Mar 2020 21:49:15 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 029LnEAq013088
 for <linux-nvme@lists.infradead.org>; Mon, 9 Mar 2020 21:49:14 GMT
Received: from [10.154.112.208] (/10.154.112.208)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 09 Mar 2020 14:49:14 -0700
From: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
To: linux-nvme@lists.infradead.org
Subject: I/O performance with block sizes > 128k
Message-ID: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
Date: Mon, 9 Mar 2020 14:49:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Antivirus: Avast (VPS 200308-0, 03/07/2020), Outbound message
X-Antivirus-Status: Clean
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 mlxlogscore=999
 spamscore=0 suspectscore=1 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090132
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 clxscore=1015
 priorityscore=1501 mlxscore=0 phishscore=0 mlxlogscore=999 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=1 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_144924_435239_B606BA8C 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SSdtIHNlZWluZyBhIHNpemVhYmxlIGRyb3AgaW4gcGVyZiB3aXRoIHBvbGxlZCBmaW8gdGVzdHMg
Zm9yIGJsb2NrIHNpemVzIAogPiAxMjhrOgoKZmlsZW5hbWU9L2Rldi9udm1lMG4xCnJ3PXJhbmRy
ZWFkCmRpcmVjdD0xCnRpbWVfYmFzZWQ9MQpyYW5kcmVwZWF0PTEKZ3RvZF9yZWR1Y2U9MQoKZmlv
IC0tcmVhZG9ubHkgLS1pb2VuZ2luZT1pb191cmluZyAtLWlvZGVwdGggMTAyNCAtLWZpeGVkYnVm
cyAtLWhpcHJpIAotLW51bWpvYgoKVGhlIHByb2JsZW0gc2VlbXMgdG8gYmUgcmVsYXRlZCB0byBz
d2l0Y2hpbmcgZnJvbSBwcnBfc21hbGxfcG9vbCB0byAKcHJwX3BhZ2VfcG9vbDsgdGhlIGZvcm1l
ciBpcyBvcHRpbWl6ZWQgZm9yIEkvTyBiZXR3ZWVuIDRrIGFuZCAxMjhrLgoKRXhwYW5kaW5nIHRo
ZSBzbWFsbCBwb29sIHNpemUgdG8gY292ZXIgdXAgdG8gMjU2ayBpbmNyZWFzZXMgdGhlIApwZXJm
b3JtYW5jZS7CoCBJJ20gbm90IHN1cmUgaG93ZXZlciBpZiB0aGlzIGlzIHRoZSBwcm9wZXIgYW5k
IGdlbmVyYWwgCmZpeC7CoCBGb3Igb25lIHRoaW5nLCBleHBhbmRpbmcgdGhlIHBvb2wgc2l6ZSBi
dW1wcyB0aGUgbnVtYmVycyBmb3IgYSAKc2hvcnQgYnVyc3QgdGVzdCAoMTAgc2VjKSBidXQgdGhl
IG51bWJlcnMgZHJvcCBhZ2FpbiBzaWduaWZpY2FudGx5IApkdXJpbmcgYSBsb25nZXIgdGVzdC7C
oCBUaGUgYmVoYXZpb3IgaXMgbm90IHVuaXF1ZSB0byBpb191cmluZyBlaXRoZXIuwqAgCkluY2x1
ZGVkIGJlbG93IGFyZSBhIGNvdXBsZSBvZiAyNTZrIGZpbyBwdnN5bmMyIHRlc3RzIGFzIHdlbGwu
CgpBIHJlbGF0ZWQgcXVlc3Rpb24sIGlzIGl0IHJlcXVpcmVkIGZvciBkbWEgcG9vbCBhbGxvY2F0
aW9ucyB0byB1c2UgCkdGUF9BVE9NSUM/wqAgTG9va3MgdGhleSBjYW4gb25seSBiZSBjYWxsZWQg
ZnJvbSBudm1lX3F1ZXVlX3JxKCkuSnVzdCBhcyAKYSB0ZXN0LCBJIGNoYW5nZWQgdGhlIGZsYWcg
dG8gR0ZQX05PV0FJVCwgYW5kIHRoYXQgc2VlbXMgdG8gYmUgb2suCgoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbnZtZS9ob3N0L3BjaS5jIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKaW5kZXggZDNm
MjNkNi4uMTZhZTBkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKKysrIGIv
ZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKQEAgLTQwLDYgKzQwLDggQEAKIMKgI2RlZmluZSBOVk1F
X01BWF9LQl9TWiA0MDk2CiDCoCNkZWZpbmUgTlZNRV9NQVhfU0VHU8KgIDEyNwoKKyNkZWZpbmXC
oMKgwqDCoMKgwqDCoCBQUlBfU01BTExfU1rCoMKgwqAgNTEyCisKIMKgc3RhdGljIGludCB1c2Vf
dGhyZWFkZWRfaW50ZXJydXB0czsKIMKgbW9kdWxlX3BhcmFtKHVzZV90aHJlYWRlZF9pbnRlcnJ1
cHRzLCBpbnQsIDApOwoKQEAgLTYxOCw3ICs2MjAsNyBAQCBzdGF0aWMgYmxrX3N0YXR1c190IG52
bWVfcGNpX3NldHVwX3BycHMoc3RydWN0IApudm1lX2RldiAqZGV2CiDCoMKgwqDCoMKgwqDCoCB9
CgogwqDCoMKgwqDCoMKgwqAgbnBycHMgPSBESVZfUk9VTkRfVVAobGVuZ3RoLCBwYWdlX3NpemUp
OwotwqDCoMKgwqDCoMKgIGlmIChucHJwcyA8PSAoMjU2IC8gOCkpIHsKK8KgwqDCoMKgwqDCoCBp
ZiAobnBycHMgPD0gKFBSUF9TTUFMTF9TWiAvIDgpKSB7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcG9vbCA9IGRldi0+cHJwX3NtYWxsX3Bvb2w7CiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaW9kLT5ucGFnZXMgPSAwOwogwqDCoMKgwqDCoMKgwqAgfSBlbHNlIHsKQEAg
LTYyNiw3ICs2MjgsNyBAQCBzdGF0aWMgYmxrX3N0YXR1c190IG52bWVfcGNpX3NldHVwX3BycHMo
c3RydWN0IApudm1lX2RldiAqZGV2CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW9k
LT5ucGFnZXMgPSAxOwogwqDCoMKgwqDCoMKgwqAgfQoKLcKgwqDCoMKgwqDCoCBwcnBfbGlzdCA9
IGRtYV9wb29sX2FsbG9jKHBvb2wsIEdGUF9BVE9NSUMsICZwcnBfZG1hKTsKK8KgwqDCoMKgwqDC
oCBwcnBfbGlzdCA9IGRtYV9wb29sX2FsbG9jKHBvb2wsIEdGUF9OT1dBSVQsICZwcnBfZG1hKTsK
IMKgwqDCoMKgwqDCoMKgIGlmICghcHJwX2xpc3QpIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpb2QtPmZpcnN0X2RtYSA9IGRtYV9hZGRyOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlvZC0+bnBhZ2VzID0gLTE7CkBAIC02MzgsNyArNjQwLDcgQEAgc3RhdGljIGJs
a19zdGF0dXNfdCBudm1lX3BjaV9zZXR1cF9wcnBzKHN0cnVjdCAKbnZtZV9kZXYgKmRldgogwqDC
oMKgwqDCoMKgwqAgZm9yICg7OykgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChpID09IHBhZ2Vfc2l6ZSA+PiAzKSB7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIF9fbGU2NCAqb2xkX3BycF9saXN0ID0gcHJwX2xpc3Q7Ci3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcnBfbGlzdCA9IGRtYV9wb29s
X2FsbG9jKHBvb2wsIEdGUF9BVE9NSUMsIAomcHJwX2RtYSk7CivCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcnBfbGlzdCA9IGRtYV9wb29sX2FsbG9jKHBvb2ws
IEdGUF9OT1dBSVQsIAomcHJwX2RtYSk7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmICghcHJwX2xpc3QpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gQkxLX1NUU19SRVNP
VVJDRTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGlz
dFtpb2QtPm5wYWdlcysrXSA9IHBycF9saXN0OwpAQCAtNzEzLDcgKzcxNSw3IEBAIHN0YXRpYyBi
bGtfc3RhdHVzX3QgbnZtZV9wY2lfc2V0dXBfc2dscyhzdHJ1Y3QgCm52bWVfZGV2ICpkZXYKIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gQkxLX1NUU19PSzsKIMKgwqDCoMKg
wqDCoMKgIH0KCi3CoMKgwqDCoMKgwqAgaWYgKGVudHJpZXMgPD0gKDI1NiAvIHNpemVvZihzdHJ1
Y3QgbnZtZV9zZ2xfZGVzYykpKSB7CivCoMKgwqDCoMKgwqAgaWYgKGVudHJpZXMgPD0gKFBSUF9T
TUFMTF9TWiAvIHNpemVvZihzdHJ1Y3QgbnZtZV9zZ2xfZGVzYykpKSB7CiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcG9vbCA9IGRldi0+cHJwX3NtYWxsX3Bvb2w7CiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW9kLT5ucGFnZXMgPSAwOwogwqDCoMKgwqDCoMKgwqAgfSBl
bHNlIHsKQEAgLTcyMSw3ICs3MjMsNyBAQCBzdGF0aWMgYmxrX3N0YXR1c190IG52bWVfcGNpX3Nl
dHVwX3NnbHMoc3RydWN0IApudm1lX2RldiAqZGV2CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW9kLT5ucGFnZXMgPSAxOwogwqDCoMKgwqDCoMKgwqAgfQoKLcKgwqDCoMKgwqDCoCBz
Z19saXN0ID0gZG1hX3Bvb2xfYWxsb2MocG9vbCwgR0ZQX0FUT01JQywgJnNnbF9kbWEpOworwqDC
oMKgwqDCoMKgIHNnX2xpc3QgPSBkbWFfcG9vbF9hbGxvYyhwb29sLCBHRlBfTk9XQUlULCAmc2ds
X2RtYSk7CiDCoMKgwqDCoMKgwqDCoCBpZiAoIXNnX2xpc3QpIHsKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpb2QtPm5wYWdlcyA9IC0xOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiBCTEtfU1RTX1JFU09VUkNFOwpAQCAtNzM3LDcgKzczOSw3IEBAIHN0YXRp
YyBibGtfc3RhdHVzX3QgbnZtZV9wY2lfc2V0dXBfc2dscyhzdHJ1Y3QgCm52bWVfZGV2ICpkZXYK
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IG52
bWVfc2dsX2Rlc2MgKm9sZF9zZ19kZXNjID0gc2dfbGlzdDsKIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IG52bWVfc2dsX2Rlc2MgKmxpbmsgPSAm
b2xkX3NnX2Rlc2NbaSAtIDFdOwoKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNnX2xpc3QgPSBkbWFfcG9vbF9hbGxvYyhwb29sLCBHRlBfQVRPTUlDLCAKJnNn
bF9kbWEpOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2df
bGlzdCA9IGRtYV9wb29sX2FsbG9jKHBvb2wsIEdGUF9OT1dBSVQsIAomc2dsX2RtYSk7CiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghc2dfbGlzdCkK
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiBCTEtfU1RTX1JFU09VUkNFOwoKQEAgLTgxNCw3ICs4MTYsNyBAQCBzdGF0
aWMgYmxrX3N0YXR1c190IG52bWVfbWFwX2RhdGEoc3RydWN0IG52bWVfZGV2IAoqZGV2LCBzdHJ1
CiDCoMKgwqDCoMKgwqDCoCB9CgogwqDCoMKgwqDCoMKgwqAgaW9kLT5kbWFfbGVuID0gMDsKLcKg
wqDCoMKgwqDCoCBpb2QtPnNnID0gbWVtcG9vbF9hbGxvYyhkZXYtPmlvZF9tZW1wb29sLCBHRlBf
QVRPTUlDKTsKK8KgwqDCoMKgwqDCoCBpb2QtPnNnID0gbWVtcG9vbF9hbGxvYyhkZXYtPmlvZF9t
ZW1wb29sLCBHRlBfTk9XQUlUKTsKIMKgwqDCoMKgwqDCoMKgIGlmICghaW9kLT5zZykKIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gQkxLX1NUU19SRVNPVVJDRTsKIMKgwqDC
oMKgwqDCoMKgIHNnX2luaXRfdGFibGUoaW9kLT5zZywgYmxrX3JxX25yX3BoeXNfc2VnbWVudHMo
cmVxKSk7CkBAIC0yNDc1LDkgKzI0NzcsOSBAQCBzdGF0aWMgaW50IG52bWVfc2V0dXBfcHJwX3Bv
b2xzKHN0cnVjdCBudm1lX2RldiAqZGV2KQogwqDCoMKgwqDCoMKgwqAgaWYgKCFkZXYtPnBycF9w
YWdlX3Bvb2wpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07
CgotwqDCoMKgwqDCoMKgIC8qIE9wdGltaXNhdGlvbiBmb3IgSS9PcyBiZXR3ZWVuIDRrIGFuZCAx
MjhrICovCi3CoMKgwqDCoMKgwqAgZGV2LT5wcnBfc21hbGxfcG9vbCA9IGRtYV9wb29sX2NyZWF0
ZSgicHJwIGxpc3QgMjU2IiwgZGV2LT5kZXYsCi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAyNTYsIDI1NiwgMCk7CivCoMKgwqDCoMKgwqAgLyogT3B0aW1pc2F0aW9uIGZvciBJ
L09zIGJldHdlZW4gNGsgYW5kIDI1NmsgKi8KK8KgwqDCoMKgwqDCoCBkZXYtPnBycF9zbWFsbF9w
b29sID0gZG1hX3Bvb2xfY3JlYXRlKCJwcnAgbGlzdCBzbWFsbCIsIGRldi0+ZGV2LAorIFBSUF9T
TUFMTF9TWiwgUFJQX1NNQUxMX1NaLCAwKTsKIMKgwqDCoMKgwqDCoMKgIGlmICghZGV2LT5wcnBf
c21hbGxfcG9vbCkgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9wb29sX2Rl
c3Ryb3koZGV2LT5wcnBfcGFnZV9wb29sKTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gLUVOT01FTTsKCgpwcnBfcG9vbCAyNTYKYnc9MzMzOE1pQi9zICgzNTAwTUIvcykg
MTI4aywgMTBzZWMKYnc9ODY4TWlCL3MgKDkxMU1CL3MpwqDCoCAxNDRrLCAxMHNlYwpidz0xNjA3
TWlCL3MgKDE2ODVNQi9zKSAyNTZrLCAxMHNlYwoKcHJwX3Bvb2wgNTEyCmJ3PTMzNDVNaUIvcyAo
MzUwN01CL3MpIDEyOGssIDEwc2VjCmJ3PTM0NTNNaUIvcyAoMzYyMU1CL3MpIDE0NGssIDEwc2Vj
CmJ3PTQ2MDNNaUIvcyAoNDgyNk1CL3MpIDI1NmssIDEwc2VjCmJ3PTI5ODJNaUIvcyAoMzEyN01C
L3MpIDEyOGssIDVtaW4KYnc9MTc2Mk1pQi9zICgxODQ3TUIvcykgMjU2aywgNW1pbgpidz0zNTc5
TWlCL3MgKDM3NTNNQi9zKSAyNTZrLCAxMHNlYywgcHZzeW5jMgpidz0xNzUyTWlCL3MgKDE4MzdN
Qi9zKSAyNTZrLCA1bWluLMKgIHB2c3luYzIKCnBycF9wb29sIDUxMiAsIEdGUF9OT1dBSVQKYnc9
MzI5NU1pQi9zICgzNDU1TUIvcykgMTI4aywgMTBzZWMKYnc9MzQ2N01pQi9zICgzNjM1TUIvcykg
MTQ0aywgMTBzZWMKYnc9NDQ4Nk1pQi9zICg0NzA0TUIvcykgMjU2aywgMTBzZWMKYnc9MzAxM01p
Qi9zICgzMTU5TUIvcykgMTI4aywgNW1pbgpidz0xNzY0TWlCL3MgKDE4NDlNQi9zKSAyNTZrLCA1
bWluCgoKLS1iaWphbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
