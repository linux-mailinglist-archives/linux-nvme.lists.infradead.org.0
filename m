Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D1B6F3F2
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WWbw0bECevRKrBJKRQGn4Y3TVWD6IKiY5VVxijYp8+k=; b=MDU
	zlpSebskNyn9QQZDsnD8Aaj1IT0RbIKNPnutBxUZBrM17+/DWIrnvrT93z1dUf0e7ZHwN89RhWbuz
	y8QVQeUUkO8q9a+tA110EVpea/q86Pnvl6I+R+H0Wjl3FDWPrw6WoeiRWM2bTNbryJqc9uWaU8r+n
	+skAG1vNJe5jsNRdC+F5/cDJr69AKeP8yR+yz53N/kAkbv9et7YY81MM2Gn7BBOH0xxdmoYY3gPpT
	drYkbAuFBwjtG4Ng9quvrblVmcgV+OiCwurPIusew8RbryPHi8gqvwmarTc5IJ2MKPZTxDFOWHesG
	aoTEtgB91pSGnmT8EMHw7pVymeGEFBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDkL-0006Do-Aq; Sun, 21 Jul 2019 15:27:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDk5-0006A7-Jz
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:27:18 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so16433928pgm.13
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=skeuJmNKK5qo+WnnC5InsJR/0JemS9LCeOFK4XEcNTk=;
 b=ZhS8R2Yve/uuMzgW6HggkVbA0vZusRya+KpSccSStOTtKLRCoSag0ZRZ9/hxom6dR7
 JKhOkDhKRnooT+3WH/rREOFsb55hBgpBTehL3tUZirZfZi9H7bD+Ilunq2D6S0edSj2y
 11yfu615TRAm433O+M/YUsF4ZIB0tHaFEEKkls86BCnX4eNqWkf2DocY/lSiz930wCCL
 FjzVxDU8S0tX8cInMMk+lSySafXZxe945LxMb5mYyvAJsX4iqBhDi84pdmDmD13rEX0F
 hCinMGBXL2BoqYbAiIohwRDU++ZaMzDH1ql1GvTYlb7AzKySRZnttgFZ0pWj+JTJ6X/p
 1htg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=skeuJmNKK5qo+WnnC5InsJR/0JemS9LCeOFK4XEcNTk=;
 b=YUSWCL9lFiyt9RP5IZ/tgborCHxLOQkrwxsHps0Cx8plCk7PdQjd2XUt6hE0nK0ZNn
 +ObP+yDkxJDzC9B6H8YfxzG/08NXgGWQJF14UpuSXyla+EGB+tSc3eMjoC4cNPahmuux
 CztiASPjbGRU6s8ZfXGib9IAHkAqfKDmt6H5LLzwtMjetbJWd7XKY8skEtM9RXKm0MKy
 SwLEqSS4vN0g9f4YvUY8IjY4dhOoNesivNGrsYiuBgv9MukNWpx9u3C8q3IjGo6JloSd
 l6vtmGGCgU6IGZC5vXrveVkbkjcu+UCy5PqWSE/P9A2eTYKb5g79pCWmpzXGNQHRZ7Cg
 PwMw==
X-Gm-Message-State: APjAAAUxxsZqOL1fqv7Op4DqjXC9phy4TRtM2Sol4Lz1IEVvdOmjW5EH
 pn3+1wglSHlmoxXQU+r27/wo1NviD7I=
X-Google-Smtp-Source: APXvYqzenTMtiAoXLE0AI18gIztOfFBZminOInFNPGT3Z20opVyoyoRhuLvkbgq0bYwcL4ayfb4NQg==
X-Received: by 2002:a63:a35c:: with SMTP id v28mr23438254pgn.144.1563722835066; 
 Sun, 21 Jul 2019 08:27:15 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e189sm7802512pgc.15.2019.07.21.08.27.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:27:14 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] lnvm: minor clean-ups
Date: Mon, 22 Jul 2019 00:26:45 +0900
Message-Id: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_082717_684189_43795DE5 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This series is nothing but a clean-up patch series.  I hope it's not a
just code churns, but a good start to do something for lnvm.

The first one removed a redundant whitespace in the command description.
The second one removed unnecessary print for the sizeof(dev) which will
always be zero in case user does not give any argument for the device.
The third patch removed temp variable instead casting the pinter
directly.  The last one just sync-up the kernel UAPI header file to the
latest.

Please review.

Thanks,

Minwoo Im (4):
  lnvm: remove redundant whitespace in lnvm_init()
  lnvm: do not print 0 when the arg is not given
  lnvm: cast identity structure to (void *) directly
  lnvm: sync-up uapi lightnvm.h header from kernel

 linux/lightnvm.h         | 52 +++++++++++++++++++++++++++++++++++++++-
 nvme-lightnvm.c          |  5 ++--
 plugins/lnvm/lnvm-nvme.c |  8 +++----
 3 files changed, 57 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
