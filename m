Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65051035F6
	for <lists+linux-nvme@lfdr.de>; Wed, 20 Nov 2019 09:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zi1k8CYN1UCgDFKTsA3clLxSKK+LY+kMLk2DsGiFW8Y=; b=j1R
	IvOKufDsQWNoJpIYJT3g6XglIt8I+04j9YdGFZlvYtTutIULzWt7hlmpo1MbLE1WEg6kvdxivKKed
	yejrEG0iW48g5B1bbi2R+eJzAgSWspH/Nm6n8+UAxgRHGSc2D7i9yGHgxl74B/qHAJJYiTnOIiAx3
	fJmCbiU7zrKFTc/u/E5iu0GTQ5HJ8jMHmh7xUEARw8PHbanOucNrJi20D60bzTa2s40zViJy3RFdn
	90UZUvIEvk4cjt3i904vrgsoGhN1hXwgCmkFnZfT+WxGmxeQqPCHflQyMQEMJ6GwLE2hbwc0+pVJA
	CMrYnuSPib7FMZlxqEMlk3YxsUkZFRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLLz-0001tw-Tx; Wed, 20 Nov 2019 08:28:47 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLLt-0001tK-KH
 for linux-nvme@lists.infradead.org; Wed, 20 Nov 2019 08:28:45 +0000
Received: by mail-pf1-x434.google.com with SMTP id q13so13858545pff.2
 for <linux-nvme@lists.infradead.org>; Wed, 20 Nov 2019 00:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rCNVNOJsB/ljC4tu1rXzX1Rn7Hu77e5LhvljQJwkVTM=;
 b=V12NSOnEbcali4adLELPG0DbDLGMlmJoM0LdL5XCYAHZbdHLLG9a592ORzHQpaDRFI
 oG1RVP3znOM3YrnViPZU6GS0L7gqsAhVIzFBGDoHSBh9if92yaVPJFRKwpJq5bbwbEoK
 Ix2sIVY7XI+i0iNjbyDyhXUxAJUo6brxsUC73eXax+3TIYNmVwRwQoQb5OQYBFIc1zRr
 DQHQYfIZTM5ynK2BkD8ID7xww5ZiHqf0NrXxibW/qDdzpjHF2rG1fpRwS8GLfIhxRpKW
 mF7WCKdWCeVJ6WQH6oXezAP3LwZ9Q+pvwE/KMJNOHUOlYLoYwKKUvee3JSk/CEP/Sk3b
 WZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rCNVNOJsB/ljC4tu1rXzX1Rn7Hu77e5LhvljQJwkVTM=;
 b=FCFIit9wj9mLdmi0Dqd/So1m4g72Zaz3sLiB5iRYZSodFQ/ekYqBXNR41ca5+uv7Zb
 sycgtW2uroOs/KxRIz3FfVmu8DJMfoekmR110UnNppjzDSMjYx1PXGrLKb2J57RIH65z
 OwInJn0pnCjKOGCQFeXJDZZycxEQAG0EtNk2dP/eb+drPlWKfj4ra0oX52iPRArFqTAg
 0LJO0+FatJacSVMiOhfkIMaONsUtk+1pxwQQ6VfALpOiFZsQ/Np8Tam+GGvFb1HVFy54
 OG+zqcrYwfU7ldtu/mN3sLUHdYEdegNrfLYvrNHZ2Ji48t9vgcYts6gysU2ABqhKkcac
 CH0A==
X-Gm-Message-State: APjAAAXzBe9ntvZACBI1YJn8SizFqe3eFde80/MTXN3XuSuMuQTUu0QE
 PR9mAvHbPWFevkCnPp7PM85HtNFG2bYDxLCx/iUJPgEZmok=
X-Google-Smtp-Source: APXvYqzURIm+XVhb/FgMd4+lCoMwNLhEydLuU61IJnjCXM5tPMHHDocKgSgE10jA2OXMeES1QQQnuKwxemrkxk0qszM=
X-Received: by 2002:aa7:828c:: with SMTP id s12mr2461697pfm.166.1574238520649; 
 Wed, 20 Nov 2019 00:28:40 -0800 (PST)
MIME-Version: 1.0
From: Sushil <sushil32@gmail.com>
Date: Wed, 20 Nov 2019 13:58:29 +0530
Message-ID: <CAOoKxP99U8E=oAY23wA4_JVQNbPXVnkpcL6_-_zcwCnYDCoBaQ@mail.gmail.com>
Subject: NVM Sets supported on Linux?
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_002843_996681_F2F7DC9B 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sushil32[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sushil32[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi All,

Are NVM Sets supported on Linux (Endurance, PLM etc)?
I could find the userspace command option "id-nvmset" (and the ioctl
NVME_ID_CNS_NVMSET_LIST) in the nvme-cli,
but nothing in the Linux kernel host and target.

Thanks,
Sushil.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
