Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E851407B
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 17:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S8qXvgvB7FzSL+oca8xOSxMqvvPvqk9/CnapIV7Tx98=; b=Ye+nKRZnh8KWGCwAvZgBTQKk6C
	0xz834z+1ZzNzQBphEDihlM++wUAN4HBqA9zoNfa/ZoQSe9Qj5Ns51d/Ht+W1jOr6Pu5Qw3sygaCl
	5qSAfbMq7mpSaYQIfMMAMzXgjuMgS1gFr+AHBH+0o2H++hEkgdDLWW18+aDbbFWxqRXONqy/fvm6V
	YJ5dx8NZIhmw1/+19yfd1ujlHUqU+GX4+9mW8H0pnlqP3EKRIgMFkaO6g3eRu5ooBA5pzSQLlfFic
	FEvVrNOIAsf9cCwAw9nS+oICE8UX0LdZ3WRmjp7UUKMHa5J5jxzVWni6w0oerd9+ZmoQHowUhKdsa
	XM01JV2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIj3-0005MT-Iq; Sun, 05 May 2019 15:06:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIiu-0005HZ-Tr
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 15:06:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id d31so5152226pgl.7
 for <linux-nvme@lists.infradead.org>; Sun, 05 May 2019 08:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=87Uhsh3a4DNaNiKT6JXl9gZu0JBq9ja45nO8OBV1tis=;
 b=sQHZPxK0rPR+MxLdU5upB12j6aAVHKtbVoMa8ANKZuVbEIXanLK9nFA4AXZB/mLXbj
 xYqO2n04zWiRB4228dZ+Ei+WzRDPlJyfFQVhcZ8hlBS051rBw28nEac3L7RUPHyXTOiX
 MtIZcOG3le0uU8XHLHEiFiwWkqZ+7H/9hVe0SgEzEMwuGRTry2gvfbUMTzcNASSFf3eY
 hw2b9gkeTERMwTBD8ls1xtihhDRDhoZpdDg8wgF+mVq//p44oSzIN3cmpIs6YbUezb9Y
 XDmhdeEdFQvdTS2o2dl05wV9Vgacy0C1zb+UdlKvU1p4mDd57TFweptAD8A+oDv9hyY1
 EHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=87Uhsh3a4DNaNiKT6JXl9gZu0JBq9ja45nO8OBV1tis=;
 b=r8iBPARPAJ5bpXJljwH5gHYeWYh/TsPm2Y3vQodNFGrKcq93mOYUyh0Spi6HJeZg4q
 oF4HPrwsrehMgX47MbJJ12roQalDTazph4knLRCx/LiYzb3JrSEJ9lRC8hZdCe4XGjCR
 Wmfq/lhyLEUegUoEWC+uBTp5Quek35d16QkNCHyNbSZT+jbRyL5lTl+xKSsgSVkr0Hlg
 VYtuYNV6kSeNGId6GIHEpKGcMwPRiPCzLaYw524rAsTWL7eOza8le1VtXO5pJYHmqQ4y
 Npxr2Nk0x6FXh/f9q5kd0Od15njGA7XwcT+pN5ZRu0LN7J3Azba+IIZjzPadoMvXSrN9
 ZKCQ==
X-Gm-Message-State: APjAAAV4jiDKRKs3VawsInzDgpm2mxzJYkGE44dlLC7LG4VkYLfmo4ii
 q7l//0/nfSbFPjUWYQHvZus=
X-Google-Smtp-Source: APXvYqwEVMp6MZhQ8Dmhd28pn9gS6I6e+8YS51rUqhbOTgZShjlETjlpjdDuw56nGmchg6E6ZY7Cvg==
X-Received: by 2002:a63:441c:: with SMTP id r28mr6958073pga.255.1557068799900; 
 Sun, 05 May 2019 08:06:39 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e1sm10152381pfn.187.2019.05.05.08.06.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 08:06:39 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Omar Sandoval <osandov@osandov.com>
Subject: [PATCH 2/3] nvme: 016: fix nvmet pass data with loop
Date: Mon,  6 May 2019 00:06:10 +0900
Message-Id: <20190505150611.15776-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_080640_976009_4F771614 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-block@vger.kernel.org, Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following commit has affected the result of genctr and treq field
printed:

genctr would increment two times per a subsystem due to
  Commit b662a078 ("nvmet: enable Discovery Controller AENs")

treq field would be printed out to support TP 8005:
  nvmet driver:
    Commit 9b95d2fb ("nvmet: expose support for fabrics SQ flow control
                      disable in treq")
  nvme-cli:
    Commit 2cf370c3 ("fabrics: support fabrics sq flow control disable")

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 tests/nvme/016.out | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/nvme/016.out b/tests/nvme/016.out
index 59bd293..8599066 100644
--- a/tests/nvme/016.out
+++ b/tests/nvme/016.out
@@ -1,11 +1,11 @@
 Running nvme/016
 
-Discovery Log Number of Records 1, Generation counter 1
+Discovery Log Number of Records 1, Generation counter 2
 =====Discovery Log Entry 0======
 trtype:  loop
 adrfam:  pci
 subtype: nvme subsystem
-treq:    not specified
+treq:    not specified, sq flow control disable supported
 portid:  X
 trsvcid: 
 subnqn:  blktests-subsystem-1
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
