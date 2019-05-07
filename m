Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAC6168B0
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7sm78eOqfbWwe3L60vqo8Rk+KZbceo3PNEixU4YhIN0=; b=HOv2cMauZqehK4EkT5KjS5wpN
	hZypOMKCJzgqwgtsfT1buAg22eHMeX5qLzECIN6Xct+K+0VkJUfSO15NHasRpvgn7/nlbSYpb08KI
	P9nZPme9uF6ww+7rODS7wLIMnBO900CDn3eYSS4GT+JQPr7QhIGhq/WWN3fx94OM2xw0/GUWK3UD2
	FibeOi6scysImFJGq114WatHrxpS4XlNPsGLkZYyWRoRVGmEjyvSS0e+gxmmYKmUeXs+WOBCKPVTp
	3WaD/YhDM0TEDvAC5EIbaxNTPsuMvgmzbL2WQZTOmKeiCg8AdD7d0gIe1glSavIJUqV/mMfnC8Cqi
	BkRQVL2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Vn-0001fr-Ui; Tue, 07 May 2019 17:04:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Vi-0001fQ-9s
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:04:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id h17so2633567pgv.0
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 10:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=H62YLszHgnlsrqbiAhgMLmynoqOxnNmRv6RVgPeQrPk=;
 b=CFFuGaOzjrh8VR+Q0AFQImFLu0NUtRFQvOBk+a7WayK8RPzdhCBS5mSfonKUtV9wUe
 YPFd/0SD0SjxMNs4Fzcr6vvC9hbHr7FDdE+37HaXyqqrvIfegus4Uh4JxeVbi3MveMOM
 3IGhcif2aaN7jUpeQdSzIna6iIogI8u17Atlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=H62YLszHgnlsrqbiAhgMLmynoqOxnNmRv6RVgPeQrPk=;
 b=S6BnmvJcyjA4AXr5vdVSVN5UiZ0bCTAe8UQCIDZ9PyNrwR2k6Qeg57f0R09sUUUeTa
 AylARQCGJ8EYwk5Zhqs+9oIqkLCwJEMctaZJUtlUEQsC95Qwpz6HMDn6QXfVJP8QAHi2
 c7EC8HKbr6WK0sJhEa3RpIytatfjLcnHpOh3Md6gvd6xxfAjanK68WMSaTM3Pcs8ITbr
 zcJFI+bovgNDMJwtqyepOnmDbD9Bj7SuavdaauSRFifoAdXR0xybb2oDsJpBL4OxSzzf
 3w0aNekq4ZnmfbWtC6K12cqFSzMqSIYSCQAtypk5DdDuTcGoDXK0W4PeIL33DpF0Tpal
 C5Fg==
X-Gm-Message-State: APjAAAW6aZSWi/igA5CIxDh4OQFGDoTmhA/aiJd0fl4eCxj+f0f6N4xF
 c+NwqTOvDM8WyAKO0rrlraXBIQti41aOB25hXdX4++ZAQtNIFjyaU3r4rk2btiSfdVY9K/PtRVS
 M5QPkKK25Qo5vTPS9MYI1Hb35xrS1dYelI4utjBCQOss79oTRa0QgNSs6jDf3kaB6waiI0D/S45
 ee9Joa6w==
X-Google-Smtp-Source: APXvYqw50IeocK/sVA60vzZc3ySOG35vTTx74ZeAGrT7zHtv6J8BbG28Rga991csX6+tgklw91apbg==
X-Received: by 2002:a63:530d:: with SMTP id h13mr39906022pgb.77.1557248649049; 
 Tue, 07 May 2019 10:04:09 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id s32sm21206959pgm.19.2019.05.07.10.04.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 10:04:08 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 1/6] fabrics: ignore arguments that pass in
 "none"
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-2-sagi@grimberg.me>
 <cd812103-3023-4563-2be8-3d22e85e5389@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <52aaf112-3460-9fd7-62d4-9a6530b8de48@broadcom.com>
Date: Tue, 7 May 2019 10:04:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cd812103-3023-4563-2be8-3d22e85e5389@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_100410_357684_D09C7FF6 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzcvMjAxOSAyOjE3IEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4KPiBPbiAyLzIzLzIw
MTkgNDozMiBBTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPj4gQXMgd2Ugd2FudCB0byBzdXBwb3J0
IGRpc2NvdmVyeSB1ZXZlbnRzIG92ZXIgZGlmZmVyZW50Cj4+IHRyYW5zcG9ydHMsIHdlIHdhbnQg
dG8gYWxsb3cgdGhlIGtlcm5lbCB0byBwcm92aWRlIG1pc3NpbmcKPj4gaW5mb3JtYXRpb24gaW4g
dGhlIGZvcm0gb2Ygbm9uZSBhbmQgaGF2ZSBudm1lLWNsaSBwcm9wZXJseQo+PiBpZ25vcmUgaXQu
Cj4+Cj4+IE9uZSBleGFtcGxlIGlzIHRoZSBob3N0X3RyYWRkci4gSWYgaXQgaXMgbm90IHNldCAo
d2hpY2ggbWVhbnMKPj4gdGhhdCB0aGUgZGVmYXVsdCByb3V0ZSBkZXRlcm1pbmVkIHRoZSBob3N0
IGFkZHJlc3MpIHdlIHdpbGwKPj4gd2FudCB0byBkbyB0aGUgc2FtZSBmb3IgbmV3bHkgZGlzY292
ZXJlZCBjb250cm9sbGVycy4KPj4KPj4gU28gYWxsb3cgdXNlcnMgdG8gcGFzcyAnbm9uZScgYXJn
dW1lbnRzIGFzIHdlbGwuCj4KPiBjYW4geW91IHBsZWFzZSBhZGQgYW4gZXhhbXBsZSBmb3IgdGhl
IGNvbW1hbmQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlID8KPgoKeWVzLCBJIHdpbGwgaW4gdGhlIHJl
cG9zdC4gVGhlIHJlYWwgaW50ZXJlc3RpbmcgY2FzZSB3aWxsIGNvbWUgZnJvbSB0aGUgCnVldmVu
dCwgd2hpY2ggd2lsbCBwYXNzIHRoZSBhZGRyZXNzIGFyZ3VtZW50IHRvIHRoZSB1ZGV2IGV2ZW50
IHNldCB0byAKIm5vbmUiLiBUaGVyZWZvcmUgdGhlIGV2ZW50OgogwqAgK0FDVElPTj09ImNoYW5n
ZSIsIFNVQlNZU1RFTT09Im52bWUiLCBFTlZ7TlZNRV9FVkVOVH09PSJkaXNjb3ZlcnkiLFwKIMKg
ICvCoCBFTlZ7TlZNRV9DVExSX05BTUV9PT0iKiIsIEVOVntOVk1FX1RSVFlQRX09PSIqIiwgCkVO
VntOVk1FX1RSQUREUn09PSIqIiwgXAogwqAgK8KgIEVOVntOVk1FX1RSU1ZDSUR9PT0iKiIsIEVO
VntOVk1FX0hPU1RfVFJBRERSfT09IioiLCBcCiDCoCArwqAgUlVOKz0iL3Vzci9iaW4vc3lzdGVt
Y3RsIC0tbm8tYmxvY2sgc3RhcnQgCm52bWYtY29ubmVjdEAtLWRldmljZT0kZW52e05WTUVfQ1RM
Ul9OQU1FfVx0LS10cmFuc3BvcnQ9JGVudntOVk1FX1RSVFlQRX1cdC0tIAp0cmFkZHI9JGVudntO
Vk1FX1RSQUREUn1cdC0tdHJzdmNpZD0kZW52e05WTUVfVFJTVkNJRH1cdC0taG9zdC10cmFkZHI9
JGVudntOVk1FX0hPU1RfVFJBRERSfS5zZXJ2aWNlIgoKd2lsbCByZXN1bHQgaW46CiIvdXNyL2Jp
bi9zeXN0ZW1jdGwgLS1uby1ibG9jayBzdGFydCAKbnZtZi1jb25uZWN0QC0tZGV2aWNlPW52bWU1
XHQtLXRyYW5zcG9ydD1ub25lXHQtLSAKdHJhZGRyPW5vbmVcdC0tdHJzdmNpZD1ub25lXHQtLWhv
c3QtdHJhZGRyPW5vbmUuc2VydmljZSIKb3IKIi91c3IvYmluL3N5c3RlbWN0bCAtLW5vLWJsb2Nr
IHN0YXJ0IApudm1mLWNvbm5lY3RALS1kZXZpY2U9bm9uZVx0LS10cmFuc3BvcnQ9ZmNcdC0tIAp0
cmFkZHI9bm46YWEtYmItY2MtZGQtMDAtMTEtMjItMzMtcG46YWEtYmItY2MtZGQtMDAtMTEtMjIt
MzNcdC0tdHJzdmNpZD1ub25lXHQtLWhvc3QtdHJhZGRyPW5uOmFhLWJiLWNjLWRkLTAwLTExLTIy
LTM0LXBuOmFhLWJiLWNjLWRkLTAwLTExLTIyLTM0LnNlcnZpY2UiCgpvciBzaW1pbGFyLgoKCj4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPj4g
LS0tCj4+IMKgIGZhYnJpY3MuYyB8IDggKysrKy0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2ZhYnJpY3Mu
YyBiL2ZhYnJpY3MuYwo+PiBpbmRleCBmNWNkMjEyN2RiMDUuLmFkOWExNWU3MjA3MCAxMDA2NDQK
Pj4gLS0tIGEvZmFicmljcy5jCj4+ICsrKyBiL2ZhYnJpY3MuYwo+PiBAQCAtNTY1LDcgKzU2NSw3
IEBAIGFkZF9hcmd1bWVudChjaGFyICoqYXJnc3RyLCBpbnQgKm1heF9sZW4sIGNoYXIgCj4+ICph
cmdfc3RyLCBjaGFyICphcmcpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBpbnQgbGVuOwo+PiDCoCAt
wqDCoMKgIGlmIChhcmcpIHsKPj4gK8KgwqDCoCBpZiAoYXJnICYmIHN0cmNtcChhcmcsICJub25l
IikpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGxlbiA9IHNucHJpbnRmKCphcmdzdHIsICptYXhf
bGVuLCAiLCVzPSVzIiwgYXJnX3N0ciwgYXJnKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChs
ZW4gPCAwKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4g
QEAgLTY1OCwxNCArNjU4LDE0IEBAIHJldHJ5Ogo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IC1FSU5WQUw7Cj4+IMKgwqDCoMKgwqAgcCArPSBsZW47Cj4+IMKgIC3CoMKgwqAgaWYgKGNmZy5o
b3N0bnFuKSB7Cj4+ICvCoMKgwqAgaWYgKGNmZy5ob3N0bnFuICYmIHN0cmNtcChjZmcuaG9zdG5x
biwgIm5vbmUiKSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbGVuID0gc3ByaW50ZihwLCAiLGhv
c3RucW49JXMiLCBjZmcuaG9zdG5xbik7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAobGVuIDwg
MCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBwICs9IGxlbjsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgIC3CoMKgwqAgaWYg
KGNmZy5ob3N0aWQpIHsKPj4gK8KgwqDCoCBpZiAoY2ZnLmhvc3RpZCAmJiBzdHJjbXAoY2ZnLmhv
c3RucW4sICJub25lIikpIHsKPgo+IGMmcCBidWcgaGVyZSA/CgpZZXMuIHRoYXQgd2FzIHRoZXJl
IGluIHRoZSBvcmlnaW5hbC4gSSB0aG91Z2h0IEkgZml4ZWQgdGhhdC4KCi0tIGphbWVzCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
