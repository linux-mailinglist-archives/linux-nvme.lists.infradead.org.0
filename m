Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C7CE95D3
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 05:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YUNGkZm8YAygBw3mAkJK8xZRZHBpn0yNavhcq8Apdp0=; b=nDW
	Q+X4OUPxrVgOr7toqrvCjDCvI1ti7Z04BSF3ykEiu7m+nZrzFGWk2PYSH4fycCH1o1T75Scfn/Lth
	wCwh+xS/0fWy9FHJiAx/0+P7rOyNtE+lJuC562PAV8jrQKp1rCLVegQuuN+BPzwZ1M49NMgfvlEsc
	gTP6hWub+5P859Dmey3hDtI9M+LqEV8cQqwIOquLT7ebGc4g+kXQLZrkcHk5ngaKhH18/EtmrPLMM
	rKF17VBWs+VbTE8121OBlskCN3jZQkGk2VKF4oGNSFIoQR/xEx0GDgQFeeRxf5apfLPCXVL4HF/Wp
	9Ieo19/V+grmc8dVliHkgTD0ZZn2ZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPfpZ-0004iM-M8; Wed, 30 Oct 2019 04:43:37 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPfpU-0004he-Ps
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 04:43:34 +0000
Received: by mail-yb1-xb30.google.com with SMTP id t11so416122ybk.10
 for <linux-nvme@lists.infradead.org>; Tue, 29 Oct 2019 21:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=CC6q5N9OsiiUMDeqcAV0X7G2s+ASvHV9dhvO15po3d0=;
 b=HqHw5woCLOsfcC9yWEgOQ8XprAYU5ZYP1KLJqRqdBfD8EN4QSBWIXpRHQXwmdBxaG8
 UoFZxXhd9asgUxWXYvz/6FHRjlvXxsFzH7/dJrHA/sKHZUtANtaYm9SB4bT8af0h56vb
 Rf9avBWTPFMT2gHLDuit7EAi3/aBHS2t/zi4rqyqkDVe5aN3xQgK8iHO7exymQzuVio7
 W2Rh65GL0hmWQ2N2RLmwUDCXOZT/LV0AJqkjaVjelPllX0TYM/VAI2cAVHdGm06JRBCS
 j6xrT6sTQDqw7zjr0PzlNXuHxJi7oFRsht/A+g+l7i1HohxB0T5m5LNoNV3wdNVI92WS
 Qakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=CC6q5N9OsiiUMDeqcAV0X7G2s+ASvHV9dhvO15po3d0=;
 b=jCnuuOeUxRYvS8ppAkGuhwxDyDSutF5HzUqwkiaDn+OBkvI9qK/JzyLYbntnmfiJOw
 EAMxjC3mXWktff0rlE5/424Qb5cttFlN0oJp5+S7Z1/CcHq78BlsfhO2BRc/vZ496L2S
 2Mhl/gOVxkr4d84+h1r9MGUQXGPacUgKC1+xZA5h/rPwEIVXc0WTKrUUcNTMbSo7dKaz
 Sca0no1f8Tv4wlWBleWVMxhbeVyHtr/96+/XkmlZtHmLI+DC/rvhgCqX+jbvOgGIyssc
 Cct7EDMJTvJkP9QYbMLwTU5ucaNBgnljlJuMlEcV4NGEdDm2AF+glMnqnruW4kQJBMW7
 hRmA==
X-Gm-Message-State: APjAAAU5ENB4LUisEglci6i0gCRiVIP2wFNcA1xW4MnX4Y0k0XPuMAL2
 m+Pl1wYMr8PzNLUKgTa9YOhgHBUHN2lX3P8vxfPaHpY+Qfo=
X-Google-Smtp-Source: APXvYqw15dY3U44W18LSblXfZjaGx0xnFo3Q5CTFy3zirZl3ou8UC6+g9crOZrYKbmGEgDQgfmEml9mF6OyraJ10Niw=
X-Received: by 2002:a25:c091:: with SMTP id c139mr2012336ybf.178.1572410610660; 
 Tue, 29 Oct 2019 21:43:30 -0700 (PDT)
MIME-Version: 1.0
From: Charles Machalow <csm10495@gmail.com>
Date: Tue, 29 Oct 2019 21:43:20 -0700
Message-ID: <CANSCoS8HakAy6zHgEjDiYQ87z83RJy-OC9ZfktRJwr+9kgnFKw@mail.gmail.com>
Subject: nvme_passthru_cmd64 has a 4 byte hole
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_214332_865149_70411DE3 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b30 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (csm10495[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (csm10495[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hey all,

I noticed (via some debug) that nvme_passthru_cmd64 seems to have a 4
byte hole that isn't currently accounted for in the struct:
From pahole:

struct nvme_passthru_cmd64 {
        __u8                       opcode;               /*     0     1 */
        __u8                       flags;                /*     1     1 */
        __u16                      rsvd1;                /*     2     2 */
        __u32                      nsid;                 /*     4     4 */
        __u32                      cdw2;                 /*     8     4 */
        __u32                      cdw3;                 /*    12     4 */
        __u64                      metadata;             /*    16     8 */
        __u64                      addr;                 /*    24     8 */
        __u32                      metadata_len;         /*    32     4 */
        __u32                      data_len;             /*    36     4 */
        __u32                      cdw10;                /*    40     4 */
        __u32                      cdw11;                /*    44     4 */
        __u32                      cdw12;                /*    48     4 */
        __u32                      cdw13;                /*    52     4 */
        __u32                      cdw14;                /*    56     4 */
        __u32                      cdw15;                /*    60     4 */
        /* --- cacheline 1 boundary (64 bytes) --- */
        __u32                      timeout_ms;           /*    64     4 */

        /* XXX 4 bytes hole, try to pack */

        __u64                      result;               /*    72     8 */

        /* size: 80, cachelines: 2, members: 18 */
        /* sum members: 76, holes: 1, sum holes: 4 */
        /* last cacheline: 16 bytes */
};

(Since I doubt we can functionally change the structure at this
point...) can we add a second rsvd field to mark that hole? ...
something like this:

struct nvme_passthru_cmd64 {
__u8 opcode;
__u8 flags;
__u16 rsvd1;
__u32 nsid;
__u32 cdw2;
__u32 cdw3;
__u64 metadata;
__u64 addr;
__u32 metadata_len;
__u32 data_len;
__u32 cdw10;
__u32 cdw11;
__u32 cdw12;
__u32 cdw13;
__u32 cdw14;
__u32 cdw15;
__u32 timeout_ms;
__u32 rsvd2;
__u64 result;
};

I believe this is binary compatible with the current
nvme_passthru_cmd64, but may help people avoid nonobvious issues in
working with both nvme_passthru_cmd and nvme_passthru_cmd64 in the
same code base. (Since I originally thought I could just use the cmd64
struct for both the old/new ioctls, and then for the old ioctls just
take 32 bits of the result... not realizing there is an extra 32 bits
of implicit padding)

If this makes sense, I'd be happy to do a formal patch request. Just
trying to feel the waters first.

- Charlie Scott Machalow

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
