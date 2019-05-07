Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A8D16890
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d3GelZdJ04GuYHdEX15qFpI2huDRbJ1pf4l/XLiK+U=; b=uCmNAGssAlREig
	sa9OIGZB0wEoLozvEo5HUxgFGfdyyBujuNWb/psTD6XbIfJnEvGO/qizg/qK3ZNIwX3kNnp2fyr19
	vaLVulhCRKVo+QpfuIft/f/5mdAWOvIhYL5YvHCqYzPV4xucqG/F4EDHaS1ZhTS12fQKTzSh+jr8t
	ga4p09AeWg4tFQmjDVs/0K62Ky7xOYRVkQLBSjiLwUUnAP8bkOYoyaSW6Eu+njP6UabEiVbroSizB
	OxVl9mqhLXyDXAnBbbWNqwmywytJrGU4CJKoPUQZIrqVWZzifyt9QTcqICcvxnWI6wtJKyjV4gO7i
	hHZlR5fOwDBbsGPOh62w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3R5-0007o4-20; Tue, 07 May 2019 16:59:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Qk-0007Vs-TL
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:59:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so8488550plp.2
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xkDmKHN/t0FLLqvqBKew99AjKdIrGt8ctiEpmuZPQEg=;
 b=mL/DwRZ6NNE/tDrfyJO92P34yidij+IBavjnpFg+vLE7NxYbAdRI3A3VMvYhslLP+M
 nzJpelgOI5WlnMSUiO2DLDiObsStnF75NA5K4GOPR2Tpf+Mte7AeN7m9u/GkN1tkj/BA
 ioJAXF1PTTz56OYBYzX4N0FBnJtVbr/5AaT9pmbrAyIIdbgWmPJvFlXLcV14BAJyA0Rz
 6edAUUl/bt2Lpp5VTwHKdXY226DIe11A2NmQRFKad4Vq37ZUnT9N8mOH7YS6tKEWWlvT
 lxcCLHwCrgm9u2hi7xdJyey5Fz+2mmlkZCtuWAgSPr2pP9tw7C3PR0P9oK7glcguRLgT
 Ec2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xkDmKHN/t0FLLqvqBKew99AjKdIrGt8ctiEpmuZPQEg=;
 b=XCdb7a1xnf/CuB2qneKOj6neUTR8F8XSTm0eOP+cvC5IjOY9zVMc83F11u6DK320ul
 rdfFnghXfFg+7psvtE7ok3A2LHVuj4/yu6YYW6+vtCYXBaf8lDA0UQcKbwPDm+7Luedf
 lH7cm9L5reIOEzPjM7zhDF4oikGpuIyHpRObn5sS1wEbz+4gebPoGrqWmQeAvJrLNndT
 OsVZ+yM5K9g9UQirhjxrGoNkB2jOrBPSm5WlUy5Y1sMYYYB41Jyly6NMuhNM6DO3FsMg
 gRM/FqZin8LtjRMCqFVZhh6x8Bj2+nD1gNIEiQQCaVqCYH2tdDpjLZQp3ficRPMBKfmO
 DuPQ==
X-Gm-Message-State: APjAAAVUmVQkePtWOEwwRerFVPHsogVwWhsCRWYZyIwqLDuti223CRHy
 jrWZfUSEReLV0jJ8gXvIKTZR4yxl
X-Google-Smtp-Source: APXvYqxJ+EQKiVy218dYR7Dm20kGmAZ+GmsLMjRTyqSTJFjZWJoq+O3itK0N2nmenAgyxxLL9dUu9Q==
X-Received: by 2002:a17:902:b606:: with SMTP id
 b6mr5432879pls.100.1557248342269; 
 Tue, 07 May 2019 09:59:02 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id r12sm18140093pfn.144.2019.05.07.09.58.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 09:59:01 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] nvme.h: add telemetry log page definisions
Date: Wed,  8 May 2019 01:58:31 +0900
Message-Id: <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095903_550422_1AB39D0A 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Q29weSB0ZWxlbWV0cnkgbG9nIHBhZ2UgZGVmaW5pc2lvbnMgZnJvbSBudm1lLWNsaS4KCkNjOiBK
b2hhbm5lcyBCZXJnIDxqb2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0PgpDYzogS2VpdGggQnVzY2gg
PGtlaXRoLmJ1c2NoQGludGVsLmNvbT4KQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KQ2M6
IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgpDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBn
cmltYmVyZy5tZT4KQ2M6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFraW5vYnUgTWl0YSA8YWtpbm9idS5taXRhQGdtYWlsLmNvbT4KLS0tCiogdjIK
LSBOZXcgcGF0Y2ggaW4gdGhpcyB2ZXJzaW9uLgoKIGluY2x1ZGUvbGludXgvbnZtZS5oIHwgMjMg
KysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9udm1lLmggYi9pbmNsdWRlL2xpbnV4L252bWUu
aAppbmRleCBjNDA3MjBjLi41MjE3ZmU0IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L252bWUu
aAorKysgYi9pbmNsdWRlL2xpbnV4L252bWUuaApAQCAtMzk2LDYgKzM5NiwyOCBAQCBlbnVtIHsK
IAlOVk1FX05JRFRfVVVJRAkJPSAweDAzLAogfTsKIAorLyogRGVyaXZlZCBmcm9tIDEuM2EgRmln
dXJlIDEwMTogR2V0IExvZyBQYWdlIOKAkyBUZWxlbWV0cnkgSG9zdAorICogLUluaXRpYXRlZCBM
b2cgKExvZyBJZGVudGlmaWVyIDA3aCkKKyAqLworc3RydWN0IG52bWVfdGVsZW1ldHJ5X2xvZ19w
YWdlX2hkciB7CisJX191OCAgICBscGk7IC8qIExvZyBwYWdlIGlkZW50aWZpZXIgKi8KKwlfX3U4
ICAgIHJzdmRbNF07CisJX191OCAgICBpZWVfb3VpWzNdOworCV9fbGUxNiAgZGFsYjE7IC8qIERh
dGEgYXJlYSAxIGxhc3QgYmxvY2sgKi8KKwlfX2xlMTYgIGRhbGIyOyAvKiBEYXRhIGFyZWEgMiBs
YXN0IGJsb2NrICovCisJX19sZTE2ICBkYWxiMzsgLyogRGF0YSBhcmVhIDMgbGFzdCBibG9jayAq
LworCV9fdTggICAgcnN2ZDFbMzY4XTsgLyogVE9ETyB2ZXJpZnkgKi8KKwlfX3U4ICAgIGN0cmxh
dmFpbDsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgZGF0YSBhdmFpbD8qLworCV9fdTggICAgY3Ry
bGRnbjsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgdGVsZW1ldHJ5IERhdGEgR2VuICMgKi8KKwlf
X3U4ICAgIHJzbmlkZW50WzEyOF07CisJLyogV2UnbGwgaGF2ZSB0byBkb3VibGUgZmV0Y2ggc28g
d2UgY2FuIGdldCB0aGUgaGVhZGVyLAorCSAqIHBhcnNlIGRhbGIxLT4zIGRldGVybWluZSBob3cg
bXVjaCBzaXplIHdlIG5lZWQgZm9yIHRoZQorCSAqIGxvZyB0aGVuIGFsbG9jIGJlbG93LiBPciBq
dXN0IGRvIGEgc2Vjb25kYXJ5IG5vbi1zdHJ1Y3QKKwkgKiBhbGxvY2F0aW9uLgorCSAqLworCV9f
dTggICAgdGVsZW1ldHJ5X2RhdGFhcmVhWzBdOworfTsKKwogc3RydWN0IG52bWVfc21hcnRfbG9n
IHsKIAlfX3U4CQkJY3JpdGljYWxfd2FybmluZzsKIAlfX3U4CQkJdGVtcGVyYXR1cmVbMl07CkBA
IC04MzIsNiArODU0LDcgQEAgZW51bSB7CiAJTlZNRV9MT0dfRldfU0xPVAk9IDB4MDMsCiAJTlZN
RV9MT0dfQ0hBTkdFRF9OUwk9IDB4MDQsCiAJTlZNRV9MT0dfQ01EX0VGRkVDVFMJPSAweDA1LAor
CU5WTUVfTE9HX1RFTEVNRVRSWV9DVFJMCT0gMHgwOCwKIAlOVk1FX0xPR19BTkEJCT0gMHgwYywK
IAlOVk1FX0xPR19ESVNDCQk9IDB4NzAsCiAJTlZNRV9MT0dfUkVTRVJWQVRJT04JPSAweDgwLAot
LSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
