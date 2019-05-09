Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C1B18D3B
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 17:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMxoemJkpBmY6C/swdr5fojK7Fu8ruE3Du1lQnLWd+c=; b=Dba1uKAVVZwM0j
	e0lrxFy2C85D1Eh5WmYEc9XWWMCaX2BtsTfvLxJ0pyzxFTTgA3LdYXuq0ahqF4hrHzGuvg70kkCtX
	Pw9t3dZPuNES/Ju91luashnfSp4ODcx2/+lhxKGRfWmc6tcp1mvrOOH8lrSitKc0mZWG8OtDeYiOf
	YGaIxbOlrJeAGfzzHlCBTZi9dQrwRdrOVoiML5I6qNsS/EjFVV/BAYIoEJxPMzTKtdnchQzy/ilog
	TfJ+dgJdVPjxCff/7x2zAFeGYndzT6mQF6YlKXbhVaUOjzDiGnHvRsjqxQNqEBzxAToDVWaAxLzD4
	++PXM7Le5VzRNAvhjRXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOlCt-0001mU-Oh; Thu, 09 May 2019 15:43:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOlCo-0001mA-Si
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 15:43:36 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so1532941pfa.3
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 08:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=otZ7Jngcw+OyhaowB7s7hhkN52zOwah02o64ywjQRxc=;
 b=FDOdUefB+ZNrEqSm/o2lJATDimMfL6ghqsJttLVNy3OFBPgg7IvA1E0HwnAdrnPf1H
 Pa8K+Zt6vrwxkcrE3EvpgoYkGkk4T1/uHmB1r3vmCXxKIJB/a0wVzZGxPNGL/CcEs3Pi
 Seeo800XxW1GtP5ofDc7eJA/Y8/7gjUbnRzDgmf9KuUQgtldOxJ4SJxtGFRflBuTkx2y
 /F+W4RgmI6F8xvuk6GBqcTovvPpCpic+IfOpIRzN4MrUln3k6DmGPFz5nFM4tSLNJDRw
 aOycpQUzo/ItBO5Ppt5lUEz11JgzEA8KPKsD8As6SWUwoU8hAeBHZGqcNdMeTT+j9h19
 JDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=otZ7Jngcw+OyhaowB7s7hhkN52zOwah02o64ywjQRxc=;
 b=NjiDvs4ayZMhsYjr+O6QitqmdwFpX6VzGI6d9Vt/9DoSPu0wCcxr5E3T8oBde6gbsV
 eTZHuMiVsUqvQysOaFVf7hVyNCUrLuse4x0P3nXAbEj7m5kcnl5vs3/mMP6bSBd5BIiB
 eBFuK/qaMOetjQeSDNePAwv6Au4gK3LnxR/GUbTvBqDKHPqeWDLbTQI384BaKwWkKjl6
 3Me/lp7roTT6aSgYOPDtToORs8m5tWeokDyekO7cuvPV5v7fmvaZT2LD2a56Oz4I/zbt
 0525LaPi82ZnvsZdDRiTvqwoUp/Ne5aVeLkc7J0z1h9a02BYTWR+aesrcgW75i/cWFgY
 SZ3A==
X-Gm-Message-State: APjAAAU6aB73Gd997CqtVEIeNr9Kk5hOOs/yl5gnA58MIuQYrva7gkaA
 14AeMQEp4JRGNBqYByRaetkF7WNu
X-Google-Smtp-Source: APXvYqwghNuwEOuEEfPiW+hR5fy+PLOOnY1Orx3/xxgput9OI37jbOIyApi1B9e9wQSaAi0oDEwRyg==
X-Received: by 2002:a62:1a8b:: with SMTP id a133mr6042193pfa.87.1557416613747; 
 Thu, 09 May 2019 08:43:33 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id k10sm2691559pgo.82.2019.05.09.08.43.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 09 May 2019 08:43:33 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: cleanup comments for telemetry log structure
Date: Fri, 10 May 2019 00:43:17 +0900
Message-Id: <1557416597-21777-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_084334_928420_B8033593 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhpcyByZW1vdmVzIHRocmVlIGNvbW1lbnRzIGZvciBzdHJ1Y3QgbnZtZV90ZWxlbWV0cnlfbG9n
X3BhZ2VfaGRyLgoKLSBUaGUgY29tbWVudCBvbiB0b3Agb2YgdGhlIGRlZmluaXNpb24gZG9lc24n
dCBkZXNjcmliZSBtb3JlIHRoYW4gdGhlCiAgc3RydWN0IG5hbWUgaXRzZWxmLgoKLSBUaGUgcnN2
ZDEgZmllbGQgaGFzIGFscmVhZHkgYmVlbiB2ZXJpZmllZC4KCi0gVGhlIHN0cnVjdHVyZXMgd2l0
aCB0cmFpbGluZyB6ZXJvIHNpemUgYXJyYXkgYXJlIGNvbW1vbmx5IHVzZWQgaW4KICBudm1lLWNs
aSwgc28gd2UgZG9uJ3QgbmVlZCBzcGVjaWFsIGNvbW1lbnQgZm9yIHRlbGVtZXRyeV9kYXRhYXJl
YVswXS4KCkNjOiBLZWl0aCBCdXNjaCA8a2VpdGguYnVzY2hAaW50ZWwuY29tPgpDYzogSmVucyBB
eGJvZSA8YXhib2VAZmIuY29tPgpDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkNj
OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgpDYzogS2VubmV0aCBIZWl0a2UgPGtl
bm5ldGguaGVpdGtlQGludGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBLZW5uZXRoIEhlaXRrZSA8a2Vu
bmV0aC5oZWl0a2VAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5v
YnUubWl0YUBnbWFpbC5jb20+Ci0tLQogbGludXgvbnZtZS5oIHwgMTAgKy0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2xpbnV4L252bWUuaCBiL2xpbnV4L252bWUuaAppbmRleCBmNmQ3MzQxLi4yYzg0MGI5IDEwMDY0
NAotLS0gYS9saW51eC9udm1lLmgKKysrIGIvbGludXgvbnZtZS5oCkBAIC00MjYsOSArNDI2LDYg
QEAgc3RydWN0IG52bWVfaWRfbnZtc2V0IHsKIAlzdHJ1Y3QgbnZtZV9udm1zZXRfYXR0cl9lbnRy
eQllbnRbTlZNRV9NQVhfTlZNU0VUXTsKIH07CiAKLS8qIERlcml2ZWQgZnJvbSAxLjNhIEZpZ3Vy
ZSAxMDE6IEdldCBMb2cgUGFnZSDigJMgVGVsZW1ldHJ5IEhvc3QKLSAqIC1Jbml0aWF0ZWQgTG9n
IChMb2cgSWRlbnRpZmllciAwN2gpCi0gKi8KIHN0cnVjdCBudm1lX3RlbGVtZXRyeV9sb2dfcGFn
ZV9oZHIgewogCV9fdTggICAgbHBpOyAvKiBMb2cgcGFnZSBpZGVudGlmaWVyICovCiAJX191OCAg
ICByc3ZkWzRdOwpAQCAtNDM2LDE1ICs0MzMsMTAgQEAgc3RydWN0IG52bWVfdGVsZW1ldHJ5X2xv
Z19wYWdlX2hkciB7CiAJX19sZTE2ICBkYWxiMTsgLyogRGF0YSBhcmVhIDEgbGFzdCBibG9jayAq
LwogCV9fbGUxNiAgZGFsYjI7IC8qIERhdGEgYXJlYSAyIGxhc3QgYmxvY2sgKi8KIAlfX2xlMTYg
IGRhbGIzOyAvKiBEYXRhIGFyZWEgMyBsYXN0IGJsb2NrICovCi0JX191OCAgICByc3ZkMVszNjhd
OyAvKiBUT0RPIHZlcmlmeSAqLworCV9fdTggICAgcnN2ZDFbMzY4XTsKIAlfX3U4ICAgIGN0cmxh
dmFpbDsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgZGF0YSBhdmFpbD8qLwogCV9fdTggICAgY3Ry
bGRnbjsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgdGVsZW1ldHJ5IERhdGEgR2VuICMgKi8KIAlf
X3U4ICAgIHJzbmlkZW50WzEyOF07Ci0JLyogV2UnbGwgaGF2ZSB0byBkb3VibGUgZmV0Y2ggc28g
d2UgY2FuIGdldCB0aGUgaGVhZGVyLAotCSAqIHBhcnNlIGRhbGIxLT4zIGRldGVybWluZSBob3cg
bXVjaCBzaXplIHdlIG5lZWQgZm9yIHRoZQotCSAqIGxvZyB0aGVuIGFsbG9jIGJlbG93LiBPciBq
dXN0IGRvIGEgc2Vjb25kYXJ5IG5vbi1zdHJ1Y3QKLQkgKiBhbGxvY2F0aW9uLgotCSAqLwogCV9f
dTggICAgdGVsZW1ldHJ5X2RhdGFhcmVhWzBdOwogfTsKIAotLSAKMi43LjQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
