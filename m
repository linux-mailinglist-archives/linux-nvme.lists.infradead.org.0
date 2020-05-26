Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800201DB066
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 12:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QX9IsqEYCPzxe5CZkaU5yUC2LWa4pOyGSAUXvGlu93k=; b=YNZMVvwX3zO2+2CLFACSzCBms
	XIQT2CnZr/B3RAANeNt+bISyijAe08ZzUjxlX9Jh8MoM/m0D4aSk7tPyXsSfdkOC/rGJ3XlpqT4ZA
	z3kEX6AuCrukUu3VzUmmZIv/k1VZpbSucUHp92qKRkzyds3RM1FWvewm45e6VfjFqtt6gaockCwd/
	EJ9s+//lW41C8Jvms5Wfstg4IOcxQKimiUBLHWoUqqiwtFOA09YRV8038kmVNA0Y2c7oTKxCU4njf
	4C2kqQ56VtTcEbKfK88Y+cnOWJMdlsRrA86ONpGEEMWORbHFH7BsCEuStZYPLug7qd14voylLe1tE
	PtxUBkDeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbM8K-0002QI-Gm; Wed, 20 May 2020 10:39:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbM8G-0002PN-16
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 10:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589971166;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PotxIGZQbpGDuPkiIASMVeg+5PsFJrQyv8lXTs/wYzs=;
 b=U/DQjAb2W/h5wQPdXfaK1C373Zo1v/FpKmYJhpbSjZvT4xxYDqcvxFAQrLSKMm/V2/v5mf
 siUQqVrWVjbKa+a/OXQGBk0MTnfdCyVQ7nCUAhA2E+CteQKCRXK/jYiNYKIDoJ7KoutF3W
 bJ/rzIMBaRMj6HCP7/cr3MpgB3ekV40=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-GrJT3k5hMkKwrt76RU77Tg-1; Wed, 20 May 2020 06:39:21 -0400
X-MC-Unique: GrJT3k5hMkKwrt76RU77Tg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29A95107ACCA;
 Wed, 20 May 2020 10:39:20 +0000 (UTC)
Received: from [10.3.112.120] (ovpn-112-120.phx2.redhat.com [10.3.112.120])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5A8F782A35;
 Wed, 20 May 2020 10:39:19 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining aens
 in nvmet_async_events_free
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
 <20200520070330.GA26871@infradead.org>
 <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
 <20200520071526.GA7008@infradead.org>
 <c0379f95-246a-3fd6-9ec9-4ee814562c8d@grimberg.me>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <41bae172-289e-1407-93a6-4147491a346c@redhat.com>
Date: Wed, 20 May 2020 05:39:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <c0379f95-246a-3fd6-9ec9-4ee814562c8d@grimberg.me>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_033928_149005_DB637CBF 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: chaitanya.kulkarni@wdc.com, dwagner@suse.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLCBTYWdpLAoKT24gMDUvMjAvMjAyMCAwMzowNiBBTSwgU2FnaSBHcmltYmVy
ZyB3cm90ZToKPiAKPj4+IDopIEkgZ3Vlc3MgdGhlIHBhbmRlbWljIGdvdCB0byBtZS4uLgo+Pj4K
Pj4+IFRoaW5ncyBtYWtlIGEgbG90IG1vcmUgc2Vuc2Ugbm93LiBCdXQgZG9uJ3Qgd2UgbmVlZCB0
byBtb3ZlIHRoZSBhZW5zCj4+PiBmcmVlIHRvIGFmdGVyIHdlIHJlbW92ZSB0aGUgY29udHJvbGxl
ciBmcm9tIHRoZSBzdWJzeXMtPmN0cmxzPwo+Pgo+PiBZZXMuwqAgSSBhbHNvIHRoaW5rIHdlIGNh
biBjbGVhbiB1cCBhIGZldyB0aGluZ3MgaGVyZS7CoCBIb3cgYWJvdXQgSSBhcHBseQo+PiB0aGUg
c2VyaWVzIGZyb20gRGF2aWQgbm93IGFuZCBzZW5kIGEgZmV3IGFkZGl0aW9uYWwgZml4dXBzIG9u
IHRvcD8KPiAKPiBTb3VuZHMgZ29vZAo+IAoKWWkgd2FzIGFibGUgdG8gcmVwcm9kdWNlIHRoZSBt
ZW1sZWFrIHVzaW5nIHRoZSB2MiBvZiB0aGUgcGF0Y2ggc2VyaWVzCnNpbmNlIG52bWV0X2FzeW5j
X2V2ZW50c19mcmVlKCkgcmFuIGJlZm9yZSBudm1ldF9hZGRfYXN5bmNfZXZlbnQoKS4KCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1udm1lLzIwMjAtTWF5LzAzMDUx
Mi5odG1sCgpXaXRoIFNhZ2kncyBwYXRjaCBiZWxvdywgSSBkbyBzZWUgYWZ0ZXIgbnZtZXRfYWRk
X2FzeW5jX2V2ZW50KCksCm52bWV0X2FzeW5jX2V2ZW50c19wcm9jZXNzIHB1bGxzIHRoZSByZXF1
ZXN0LCBkZWNyZW1lbnRzCmN0cmwtPm5yX2FzeW5jX2V2ZW50X2NtZHMgdG8gMCwgYW5kIGZyZWVz
IHRoZSBhZW4sCmFuZCBubyBtZW1vcnkgbGVhay4KCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L3BpcGVybWFpbC9saW51eC1udm1lLzIwMjAtTWF5LzAzMDU0OC5odG1sCgpUaGFua3MsCkRhdmlk
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
