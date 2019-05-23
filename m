Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B94281D9
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=StdpQRu68h9zFQjsCQ/FwheZ40i451Rp6IabFv2yEag=; b=HGo2M92w7uHPjFplC52qGmd1K
	YAE5t8jR5Y/YGvu+rHTZLgMX0Oq+2+UPxNKszPFUfLEhmmlHiDsgIIPup/KUuphcfRUb16vMXjlL6
	xP8RKaF57Y3Bf4+aFOzk1/qqoPAPz6/OLq3td28x63tOMGngyvvDVoEe1DVgP94xocFLwVOFnPigI
	vd65Ix1gYHvvlb+PqBt7+hBUHdxPAZNNmvH6q6rF65sATq//lgSwF2Dois6nLvl6pjSRmZ6lppc6W
	355u2Js2xmBztpaM3Qyoxq7jmAPe+hDCc9x7GUzO5nYwW8+7/WChD+w3WcJSMe1QxfnksnqZ388Q+
	QOaQvTwdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTq33-0000RP-LB; Thu, 23 May 2019 15:54:29 +0000
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTq2y-0000Qy-0K
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:54:25 +0000
Received: by mail-pl1-f182.google.com with SMTP id c5so2924525pll.11
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 08:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3d/ZExZVIqQPyhKU8376DrFROBQThiZeWJBHWl4aOz0=;
 b=cQUF721qZJdHVtQk1tg56Di+Dou9hc2pN68uJjhouMczDkFvqvJhZnILqudM5goVAe
 ebsdEDnpvAB3/FSRx4Y54LTNUWIdOmmUFy8Wg/wiBcnxTQ5kbDZhto5l4M6UQ3s7EmMO
 Hwo4hgndug12e7He/kFmZs2uSqJCq64XNzg1LB3XKY9S+yFo29J56oKkauRwjAMDYlrE
 RMGMICQZFmvgajieUZ9V7TXwrrjRdHvUwENfQaUqHstBV4jXVzv4u2mDxv7ESEXeyLWN
 velo8yB48qMFuS7rGzz+Kjj322Cc2ENyo7fxh0bv1IH/kZXZsHeG5WzxxSqbVWaJuHbF
 9MxA==
X-Gm-Message-State: APjAAAWZRF5Lyk90HS5ixVDquKjYb2B3Vc0EL+qwFSgoxzI3bWaCJ56b
 zIkzUezvHoetm8v82wXcrUNkoue6
X-Google-Smtp-Source: APXvYqy4BfEodnxMUgJ6X9RFMvB/t2Ub8fU2Mj0x0/tCSQINbur2dvkMq8skK/yBB/E7sC61fTRxMw==
X-Received: by 2002:a17:902:e00a:: with SMTP id
 ca10mr101284365plb.18.1558626862702; 
 Thu, 23 May 2019 08:54:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id d4sm881456pju.19.2019.05.23.08.54.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:54:21 -0700 (PDT)
Subject: Re: Using host fabrics drivers with a target with limited queues
To: Christoph Hellwig <hch@infradead.org>,
 "Harris, James R" <james.r.harris@intel.com>
References: <1CBC7E3F-7BE5-47DD-8A98-178BBEC8FB8F@intel.com>
 <20190516160338.GA21777@infradead.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <662f0b39-64d0-29dd-9741-a558494e5598@grimberg.me>
Date: Thu, 23 May 2019 08:54:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516160338.GA21777@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_085424_049017_FC4A9829 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.182 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gQWRkaW5nIHRoZSBudm1lLXRjcCBtYWludGFpbmVyIGZvciBpbmNyZWFzZWQgdmlzaWJpbGl0
eS4uCj4gCj4gT24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMDk6MzI6MzRQTSArMDAwMCwgSGFycmlz
LCBKYW1lcyBSIHdyb3RlOgo+PiBIaSwKPj4KPj4gSeKAmXZlIGJlZW4gcnVubmluZyBzb21lIHRl
c3RzIHdpdGggdGhlIExpbnV4IG52bWUgZHJpdmVyIGFnYWluc3QgdGhlIFNQREsgbnZtZSBmYWJy
aWNzIHRhcmdldC4gIFNvbWUgb2YgdGhlIHRlc3RzIGNhcCB0aGUgbnVtYmVyIG9mIHF1ZXVlcyBy
ZXR1cm5lZCBieSBOVk1FX0ZFQVRfTlVNX1FVRVVFUyBhbmQgcmVzdWx0IGluIGEgMTAwJSByZXBy
b2R1Y2libGUgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLiAgU2VlIHN0YWNrIHRyYWNlIGJlbG93
LiAgVGhlIGV4YWN0IHNhbWUgY2FsbCBzdGFjayBoYXBwZW5zIG9uIHJkbWEgYXMgd2VsbCAoanVz
dCBzd2FwIG52bWVfdGNwX2NyZWF0ZS9zZXR1cF9jdHJsIHdpdGggbnZtZV9yZG1hX2NyZWF0ZS9z
ZXR1cF9jdHJsKS4KPj4KPj4gbnZtZV90Y3BfYWxsb2NfaW9fcXVldWVzIGFuZCBudm1lX3JkbWFf
YWxsb2NfaW9fcXVldWVzIHNlZW0gdG8gYmUgdGhlIGN1bHByaXRzLiAgVGhlIGN0cmwtPmlvX3F1
ZXVlc1tdIGFycmF5IGdldHMgc2V0IHVwIGFzc3VtaW5nIHRoYXQgYWxsIG9mIHRoZSBkZXNpcmVk
IGlvIHF1ZXVlcyB3aWxsIGJlIGF2YWlsYWJsZS4gIElmIG52bWVfc2V0X3F1ZXVlX2NvdW50KCkg
cmVkdWNlcyBucl9pb19xdWV1ZXMsIHRoZSBtYXBzIHN0aWxsIGdldCBzZXQgdXAgd2l0aCB0aGUg
YmlnZ2VyIHZhbHVlcyBldmVuIHRob3VnaCB3ZSBoYXZlIGZld2VyIEkvTyBxdWV1ZXMuCj4+Cj4+
IE5vdGUgdGhhdCByZWR1Y2luZyB0aGUgbWF4IG51bWJlciBvZiBxdWV1ZXMgaW4gdGhlIGtlcm5l
bCBudm1lIGZhYnJpY3MgdGFyZ2V0IGZyb20gMTI4IHRvIGEgbXVjaCBzbWFsbGVyIG51bWJlciBy
ZXN1bHRzIGluIHRoZSBleGFjdCBzYW1lIGlzc3VlLgo+Pgo+PiBJdCBzZWVtcyBsaWtlIHRoZSBj
dHJsLT5pb19xdWV1ZXMgYXJyYXkgbmVlZHMgdG8gYmUgc2V0dXAgYWZ0ZXIgd2Uga25vdyBob3cg
bWFueSBJTyBxdWV1ZXMgY2FuIGJlIGNyZWF0ZWQuICBCdXQgaXQncyBub3QgY2xlYXIgdG8gbWUg
ZXhhY3RseSBob3cgaXQgc2hvdWxkIGhhbmRsZSB0aGUgY2FzZSB3aGVyZSBucl93cml0ZV9xdWV1
ZXMgb3IgbnJfcG9sbF9xdWV1ZXMgPiAwLgo+Pgo+PiAoVGhlIGN0cmwtPmlvX3F1ZXVlc1tIQ1RY
X1RZUEVfUkVBRF0gYXNzaWdubWVudCBhbHNvIHNlZW1zIGluY29ycmVjdCB3aGVuIG5yX3dyaXRl
X3F1ZXVlcyA+IDAuICBXZSd2ZSBhbHJlYWR5IGluY3JlbWVudGVkIG5yX2lvX3F1ZXVlcyBhdCB0
aGlzIHBvaW50LCBzbyBJIHRoaW5rIHRoaXMgcmVzdWx0cyBpbiB0b28gbWFueSBpbyBxdWV1ZXMg
Z2V0dGluZyBhbGxvY2F0ZWQgYW5kIHBvc3NpYmx5IHNvbWUgaW5jb3JyZWN0IHF1ZXVlX29mZnNl
dHMgaW4gdGhlIG1hcF9xdWV1ZXMgZnVuY3Rpb25zLiAgQnV0IEkgbWF5IG5vdCBiZSB1bmRlcnN0
YW5kaW5nIHRoaXMgcGFydCBvZiB0aGUgY29kZSBjb3JyZWN0bHkuKQo+Pgo+PiBBbnkgYWR2aWNl
IHdvdWxkIGJlIGFwcHJlY2lhdGVkIG9uIGZpeGluZyB0aGlzIGlzc3VlLiAgSSdkIGFsc28gYmUg
aGFwcHkgdG8gdGVzdCBhbnkgcGF0Y2hlcyBpZiBzb21lb25lIHdpdGggYSBiZXR0ZXIgdW5kZXJz
dGFuZGluZyBvZiB0aGlzIHBhcnQgb2YgdGhlIGNvZGUgd291bGQgbGlrZSB0byB0aHJvdyBzb21l
dGhpbmcgdG9nZXRoZXIuCgpIaSBKYW1lcywgdGhhbmtzIGZvciByZXBvcnRpbmcuCgpKdXN0IGdv
dCBiYWNrIGZyb20gYSB2YWNhdGlvbiwgbGV0IG1lIHByZXBhcmUgYSBwYXRjaCBmb3IgdGhpcyBv
bmUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
