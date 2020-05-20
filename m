Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF651DBD7C
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 21:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4u1xUrCX+7q2DcdDVyqLatJrRi9qE9ahiF9nImQ/S1k=; b=bAAxOIza7A+N/j
	ZYyToNWXgF2HnCejqKSb6VXtx4Hc69gOBMQQGCaRwqGQ++MQ4YqymOOqXkJZbKJf2CRCd/xxHgvTq
	3qAicDNLbItz6ZRuhxio8FZimC6SNLBQEg3Sf54fAiMGAgce+DlumY18KplbLnJSCrlUuGXn/rPqR
	HxHpuMNR4zhuspfvg6jy/W3k5phvXdFhp7zlcjXkY1pCIcILuLBnyThkUX4m4IJcdwvdhM9e29XNY
	xE3mg6nsMMSD21yyegNzX8eFDBhM9tuviqrUQygHuStXgM6GxZPSt92+5bSUhAC/mqBxROUu33fcT
	4ZVsdNibukJgBEENVfpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbTx5-000258-IR; Wed, 20 May 2020 19:00:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbTwV-0001sv-0j
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 18:59:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so4305751wru.0
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 11:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vNhGfRsHJxyNSVytpWaTAQlFuK0phfz6fCM2jfbdfio=;
 b=su2Qt1GVxQEbh7ppB2mE7orClcNCq4h92tdLzWwMzSWDjwZrlyuc159qkTxQ7WK2aB
 WCo6bW/B4ZUhogMEZMgJaKCO2gjHMnlJ5prYiD6FIuZREwJnLGqjsue6cwQ3CmrKoqbI
 ZlZ2gRfexacJgQT2TExOhvklrsbT17HtNaGH7Y3ttrwvvLUYkA6oDa+wrSkYPtqgmN9Z
 OVnUb9umUFpx58skc44gioUaNCgL7gHJYu56wjIpiQfkVWRikq+hLefL7baRqTokk8q6
 wlof4iJZ2j4v1dj34qS0VoNCMrlA/dskBDnx4Mq8raKB/LNbpJKy63aWChLfUSketq35
 f7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vNhGfRsHJxyNSVytpWaTAQlFuK0phfz6fCM2jfbdfio=;
 b=eeyxqJspTuk0BOExmRkxaItUm9aFxVqCud+S7sYjYCvVY3f4pBUhNl1Te2LoJSGUQs
 QpALDth0Dmp9V0IQYtGx8i1OlBzKtW4Nhr3OMX1SLhC+nLKcNbGJ17Wn5wt+7TAgymDy
 Vxss+0TyDfGub40RC7tt8KButz8FhQagt7zgZ3hj1l7ywdFH21vSQgCYNYTMoBAaq89x
 DRyq+5HJPl9Hm8PG35cCaG6nkExDoveXN0UDjkyhbXHqmYP5q6hM3HpWyciao/d68/Nv
 QcX7p/spSpE6x5eUciP2maOjqCvx1oHXjwauOQyxCLh1Nfh1321hbzgrvcBmujDqznQz
 RVGQ==
X-Gm-Message-State: AOAM533jUO8jAnVfT4ICs3uONPxMdtV1Y8eI29o3o5sVbFlNTqso8CnK
 LmsIDjDEXDTqk5cSl5NCqQUg4boQ
X-Google-Smtp-Source: ABdhPJzv+8R3/sgNT/uHYcXElV/E9t20Y8v5lB2YPPBHzXSV48cCvJz5fw6PaZN/r0PE4qfwtAASdA==
X-Received: by 2002:a5d:6803:: with SMTP id w3mr5288598wru.151.1590001185754; 
 Wed, 20 May 2020 11:59:45 -0700 (PDT)
Received: from localhost.localdomain.localdomain (ip68-5-85-189.oc.oc.cox.net.
 [68.5.85.189])
 by smtp.gmail.com with ESMTPSA id c19sm3896483wrb.89.2020.05.20.11.59.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 11:59:45 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/3] lpfc: Fix pointer checks and comments in LS receive
 refactoring
Date: Wed, 20 May 2020 11:59:27 -0700
Message-Id: <20200520185929.48779-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200520185929.48779-1-jsmart2021@gmail.com>
References: <20200520185929.48779-1-jsmart2021@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_115951_739574_8C27B046 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, James Smart <jsmart2021@gmail.com>,
 martin.petersen@oracle.com, linux-scsi@vger.kernel.org, jejb@linux.ibm.com,
 kernel-janitors@vger.kernel.org, hch@infradead.org, paul.ely@broadcom.com,
 hare@suse.de, dan.carpenter@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

QWRkaXRpb25hbCB0ZXN0aW5nIGVuY291bnRlcmVkIG51bGwgcG9pbnRlcnMgdGhhdCB3ZXJlbid0
IGZ1bGx5IHF1YWxpZmllZAppbiBscGZjX252bWV0X3htdF9sc19hYm9ydF9jbXAoKSBhbmQgbHBm
Y19udm1ldF91bnNvbF9pc3N1ZV9hYm9ydCgpLgoKVGhlIHNhbWUgZXJyb3Igd2FzIGRldGVjdGVk
IGFuZCByZXBvcnRlZCBieSBzdGF0aWMgY2hlY2tlciByZXBvcnRpbmc6CiAgZHJpdmVycy9zY3Np
L2xwZmMvbHBmY19zbGkuYzoyOTA1IGxwZmNfbnZtZV91bnNvbF9sc19oYW5kbGVyKCkKICBlcnJv
cjogd2UgcHJldmlvdXNseSBhc3N1bWVkICdwaGJhLT50YXJnZXRwb3J0JyBjb3VsZCBiZSBudWxs
CiAgICAoc2VlIGxpbmUgMjgzNykKCkZpeCBieSBtYWtpbmcgcGhiYS0+bnZtZXRfc3VwcG9ydCBh
bmQgcGhiYS0+dGFyZ2V0cG9ydCB2YWxpZGl0eSBjaGVja3MKaW4gbHBmY19udm1ldF94bXRfbHNf
YWJvcnRfY21wKCkgYW5kIGxwZmNfbnZtZXRfdW5zb2xfaXNzdWVfYWJvcnQoKS4KCkZpeGVzOiAz
YTgwNzBjNTY3YWFhICjigJxscGZjOiBSZWZhY3RvciBOVk1FIExTIHJlY2VpdmUgaGFuZGxpbmfi
gJ0pClJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+
ClNpZ25lZC1vZmYtYnk6IFBhdWwgRWx5IDxwYXVsLmVseUBicm9hZGNvbS5jb20+ClNpZ25lZC1v
ZmYtYnk6IEphbWVzIFNtYXJ0IDxqc21hcnQyMDIxQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3Nj
c2kvbHBmYy9scGZjX252bWV0LmMgfCAyNiArKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zY3NpL2xwZmMvbHBmY19udm1ldC5jIGIvZHJpdmVycy9zY3NpL2xwZmMvbHBm
Y19udm1ldC5jCmluZGV4IDFjNmJiYmJhNzBiNS4uYmNjZjlkYTMwMmVlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3Njc2kvbHBmYy9scGZjX252bWV0LmMKKysrIGIvZHJpdmVycy9zY3NpL2xwZmMvbHBm
Y19udm1ldC5jCkBAIC0zMjA3LDggKzMyMDcsMTAgQEAgbHBmY19udm1ldF94bXRfbHNfYWJvcnRf
Y21wKHN0cnVjdCBscGZjX2hiYSAqcGhiYSwgc3RydWN0IGxwZmNfaW9jYnEgKmNtZHdxZSwKIAlj
dHhwID0gY21kd3FlLT5jb250ZXh0MjsKIAlyZXN1bHQgPSB3Y3FlLT5wYXJhbWV0ZXI7CiAKLQl0
Z3RwID0gKHN0cnVjdCBscGZjX252bWV0X3RndHBvcnQgKilwaGJhLT50YXJnZXRwb3J0LT5wcml2
YXRlOwotCWF0b21pY19pbmMoJnRndHAtPnhtdF9sc19hYm9ydF9jbXBsKTsKKwlpZiAocGhiYS0+
bnZtZXRfc3VwcG9ydCkgeworCQl0Z3RwID0gKHN0cnVjdCBscGZjX252bWV0X3RndHBvcnQgKilw
aGJhLT50YXJnZXRwb3J0LT5wcml2YXRlOworCQlhdG9taWNfaW5jKCZ0Z3RwLT54bXRfbHNfYWJv
cnRfY21wbCk7CisJfQogCiAJbHBmY19wcmludGZfbG9nKHBoYmEsIEtFUk5fSU5GTywgTE9HX05W
TUVfQUJUUywKIAkJCSI2MDgzIEFib3J0IGNtcGw6IGN0eCB4JXB4IFdDUUU6JTA4eCAlMDh4ICUw
OHggJTA4eFxuIiwKQEAgLTMyNDQsNyArMzI0Niw3IEBAIGxwZmNfbnZtZXRfdW5zb2xfaXNzdWVf
YWJvcnQoc3RydWN0IGxwZmNfaGJhICpwaGJhLAogCQkJICAgICBzdHJ1Y3QgbHBmY19hc3luY194
Y2hnX2N0eCAqY3R4cCwKIAkJCSAgICAgdWludDMyX3Qgc2lkLCB1aW50MTZfdCB4cmkpCiB7Ci0J
c3RydWN0IGxwZmNfbnZtZXRfdGd0cG9ydCAqdGd0cDsKKwlzdHJ1Y3QgbHBmY19udm1ldF90Z3Rw
b3J0ICp0Z3RwID0gTlVMTDsKIAlzdHJ1Y3QgbHBmY19pb2NicSAqYWJ0c193cWVxOwogCXVuaW9u
IGxwZmNfd3FlMTI4ICp3cWVfYWJ0czsKIAlzdHJ1Y3QgbHBmY19ub2RlbGlzdCAqbmRscDsKQEAg
LTMyNTMsMTMgKzMyNTUsMTUgQEAgbHBmY19udm1ldF91bnNvbF9pc3N1ZV9hYm9ydChzdHJ1Y3Qg
bHBmY19oYmEgKnBoYmEsCiAJCQkiNjA2NyBBQlRTOiBzaWQgJXggeHJpIHgleC94JXhcbiIsCiAJ
CQlzaWQsIHhyaSwgY3R4cC0+d3FlcS0+c2xpNF94cml0YWcpOwogCi0JdGd0cCA9IChzdHJ1Y3Qg
bHBmY19udm1ldF90Z3Rwb3J0ICopcGhiYS0+dGFyZ2V0cG9ydC0+cHJpdmF0ZTsKKwlpZiAocGhi
YS0+bnZtZXRfc3VwcG9ydCAmJiBwaGJhLT50YXJnZXRwb3J0KQorCQl0Z3RwID0gKHN0cnVjdCBs
cGZjX252bWV0X3RndHBvcnQgKilwaGJhLT50YXJnZXRwb3J0LT5wcml2YXRlOwogCiAJbmRscCA9
IGxwZmNfZmluZG5vZGVfZGlkKHBoYmEtPnBwb3J0LCBzaWQpOwogCWlmICghbmRscCB8fCAhTkxQ
X0NIS19OT0RFX0FDVChuZGxwKSB8fAogCSAgICAoKG5kbHAtPm5scF9zdGF0ZSAhPSBOTFBfU1RF
X1VOTUFQUEVEX05PREUpICYmCiAJICAgIChuZGxwLT5ubHBfc3RhdGUgIT0gTkxQX1NURV9NQVBQ
RURfTk9ERSkpKSB7Ci0JCWF0b21pY19pbmMoJnRndHAtPnhtdF9hYm9ydF9yc3BfZXJyb3IpOwor
CQlpZiAodGd0cCkKKwkJCWF0b21pY19pbmMoJnRndHAtPnhtdF9hYm9ydF9yc3BfZXJyb3IpOwog
CQlscGZjX3ByaW50Zl9sb2cocGhiYSwgS0VSTl9FUlIsIExPR19OVk1FX0FCVFMsCiAJCQkJIjYx
MzQgRHJvcCBBQlRTIC0gd3JvbmcgTkRMUCBzdGF0ZSB4JXguXG4iLAogCQkJCShuZGxwKSA/IG5k
bHAtPm5scF9zdGF0ZSA6IE5MUF9TVEVfTUFYX1NUQVRFKTsKQEAgLTM1MzgsNyArMzU0Miw3IEBA
IGxwZmNfbnZtZV91bnNvbF9sc19pc3N1ZV9hYm9ydChzdHJ1Y3QgbHBmY19oYmEgKnBoYmEsCiAJ
CQkJc3RydWN0IGxwZmNfYXN5bmNfeGNoZ19jdHggKmN0eHAsCiAJCQkJdWludDMyX3Qgc2lkLCB1
aW50MTZfdCB4cmkpCiB7Ci0Jc3RydWN0IGxwZmNfbnZtZXRfdGd0cG9ydCAqdGd0cDsKKwlzdHJ1
Y3QgbHBmY19udm1ldF90Z3Rwb3J0ICp0Z3RwID0gTlVMTDsKIAlzdHJ1Y3QgbHBmY19pb2NicSAq
YWJ0c193cWVxOwogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAJaW50IHJjOwpAQCAtMzU1NSw3ICsz
NTU5LDkgQEAgbHBmY19udm1lX3Vuc29sX2xzX2lzc3VlX2Fib3J0KHN0cnVjdCBscGZjX2hiYSAq
cGhiYSwKIAkJY3R4cC0+c3RhdGUgPSBMUEZDX05WTUVfU1RFX0xTX0FCT1JUOwogCX0KIAotCXRn
dHAgPSAoc3RydWN0IGxwZmNfbnZtZXRfdGd0cG9ydCAqKXBoYmEtPnRhcmdldHBvcnQtPnByaXZh
dGU7CisJaWYgKHBoYmEtPm52bWV0X3N1cHBvcnQgJiYgcGhiYS0+dGFyZ2V0cG9ydCkKKwkJdGd0
cCA9IChzdHJ1Y3QgbHBmY19udm1ldF90Z3Rwb3J0ICopcGhiYS0+dGFyZ2V0cG9ydC0+cHJpdmF0
ZTsKKwogCWlmICghY3R4cC0+d3FlcSkgewogCQkvKiBJc3N1ZSBBQlRTIGZvciB0aGlzIFdRRSBi
YXNlZCBvbiBpb3RhZyAqLwogCQljdHhwLT53cWVxID0gbHBmY19zbGlfZ2V0X2lvY2JxKHBoYmEp
OwpAQCAtMzU4MiwxMSArMzU4OCwxMyBAQCBscGZjX252bWVfdW5zb2xfbHNfaXNzdWVfYWJvcnQo
c3RydWN0IGxwZmNfaGJhICpwaGJhLAogCXJjID0gbHBmY19zbGk0X2lzc3VlX3dxZShwaGJhLCBj
dHhwLT5oZHdxLCBhYnRzX3dxZXEpOwogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBoYmEtPmhi
YWxvY2ssIGZsYWdzKTsKIAlpZiAocmMgPT0gV1FFX1NVQ0NFU1MpIHsKLQkJYXRvbWljX2luYygm
dGd0cC0+eG10X2Fib3J0X3Vuc29sKTsKKwkJaWYgKHRndHApCisJCQlhdG9taWNfaW5jKCZ0Z3Rw
LT54bXRfYWJvcnRfdW5zb2wpOwogCQlyZXR1cm4gMDsKIAl9CiBvdXQ6Ci0JYXRvbWljX2luYygm
dGd0cC0+eG10X2Fib3J0X3JzcF9lcnJvcik7CisJaWYgKHRndHApCisJCWF0b21pY19pbmMoJnRn
dHAtPnhtdF9hYm9ydF9yc3BfZXJyb3IpOwogCWFidHNfd3FlcS0+Y29udGV4dDIgPSBOVUxMOwog
CWFidHNfd3FlcS0+Y29udGV4dDMgPSBOVUxMOwogCWxwZmNfc2xpX3JlbGVhc2VfaW9jYnEocGhi
YSwgYWJ0c193cWVxKTsKLS0gCjIuMjYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUK
