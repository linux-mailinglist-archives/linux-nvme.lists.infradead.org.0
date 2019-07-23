Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B7871AA3
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 16:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X1+YMTkSw+0Y4JXICOfeCP/B5ShFXpIgvOt3421bxEc=; b=QbUavvccBZWKZF
	+gclCzZWTGMaqUrEy0GUmaVWd35frSCuxqFYMaNwbl/zcxL2Jj4Xg+9uFQNOtawsk2bORk+ouMdX6
	56gqExa94GIbAGIH3LArS8C3auj56uCEkOxGQumjCtXlyL1mMasAthLXIXJgUKajdZOSftbuSPVUW
	NaNwMZAiPjnDJxE49hliCzC36uCg5QwvkR1HY3WST78U1WdpT9EGdbe+J/c9tmYSCKy4CkHrMeCYc
	hIHP4X4ojzNDBgL6a6fOZx0Y08R9+WGHRVr8ABrESaq+gF9r8q5aG3t6GmnMh3+VPBUcREHH8hVGs
	fBdCPRIDRNS+ngdMavLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpw0b-0008BS-0p; Tue, 23 Jul 2019 14:43:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpw0G-0007y0-0Y
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 14:42:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so20703116plr.12
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 07:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LJ4In0T5pBgpijmVeUe/r1wtz+G4847JW7ihYKrs1VM=;
 b=nGTCVW7EnSiTF5hSfvQSp4wY8tJ/nAugDDJvccNAd3QG4haunRpxqa9IiRNt+/tcF5
 +00ZEApnOF98EnSUfcFMizKP8S243EC8uGi6Es8m4+bt+TRjGlTmqYwyN8AGuNFnqGBh
 Jku0Y4lm7Iysoc6lkrsTNgRShEnChNqkUtsdFaZfF4oqIxPuoHEDpRSXzn1qzmL/KIua
 volzghwCi5QR0KYgRqXkOOnVaKci5vqSMuWuYz2hXuIMGxfccpBtE+CpV5eDVX8ikZ3b
 GNr44t20xDZhrQHkqtX0RJzYXCiTJz8UNfIVPiwvC7L4hFttVcu87MP4LoG02cgjtbRr
 MJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LJ4In0T5pBgpijmVeUe/r1wtz+G4847JW7ihYKrs1VM=;
 b=ol3ggM9Q5kZqDsB0o/oeut0Ac0kV0RlR3PNqWUCMS5XnVs3tlaKDxzkoQiqfqFSO1h
 CMAn3QcOGx95oFGjhKi7BZOy/uALSkIfttD823RNpWN4aO5deBt6pExeAO8ekHEYJreP
 +1XkuZBFGCI1SslMmij9MYy2z/dA6WFjxkZrNX+HQFBCCkLWESoiZ9IPeXoDu0VY5zXm
 8cV12h2Pf7wiCd2TcJcfXs3RiA2WdUeGjnY6pPtbkWxAVmVjZ3PpEZVbfTEwmFyh3/68
 qDN3KNrJ7drzkqn90EWnB+Ov6Lk67l0TKSFyom41CsIBmCM/iRiI0pDJrFjeJG3Jpg2w
 dD+w==
X-Gm-Message-State: APjAAAVipFbc8StPwKQjSojC95o19FpiHGqpGD72JiIxPCzjdLmf4hTk
 olHWuptuMigpepjUGk2YOPX8du9p8pA=
X-Google-Smtp-Source: APXvYqx2UV5E20zILxeLYskC5V1+Rvjix1FpVdwjcdYnsbaBBEOvo9lAaOU848nZRqRW8O6MpeLstA==
X-Received: by 2002:a17:902:d81:: with SMTP id
 1mr84184921plv.323.1563892970190; 
 Tue, 23 Jul 2019 07:42:50 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g8sm39866865pgk.1.2019.07.23.07.42.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:42:49 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 0/3] lnvm: minor clean-ups
Date: Tue, 23 Jul 2019 23:42:32 +0900
Message-Id: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_074256_107248_F7B3E4B5 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

This series has been reviewed by Matias and Javier.  Please consider
this series to be merged.  The Github PR can be found at:
	https://github.com/linux-nvme/nvme-cli/pull/527

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

Changes to V3:
  - Drop the last commit which is about the re-sync for the UAPI header
    file from the kernel because it does not have any actual using code.
    (Matias)
  - Added Reviewed-by tag from Javier. (Javier)

Changes to V2:
  - Resend the series with the latest patch commits.

Minwoo Im (3):
  lnvm: remove redundant whitespace in lnvm_init()
  lnvm: do not print 0 when the arg is not given
  lnvm: cast identity structure to (void *) directly

 nvme-lightnvm.c          | 5 ++---
 plugins/lnvm/lnvm-nvme.c | 8 ++++----
 2 files changed, 6 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
