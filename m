Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA711A6843
	for <lists+linux-nvme@lfdr.de>; Mon, 13 Apr 2020 16:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B0Y/G2bZJkO8b23ve/7cPUATbi6AAjH0ZuaIErMyy1s=; b=eRA
	4Pl0YfXveldKFfxHA1GLAlIMfz2tSVws0lYHy4gKWLr9jzJWiFusB7iNYSjM92csV1VBhFRnRy6Jv
	Foa1tzPkZlD8x4p6YTzS/71I1arqcD+Ml8H7Rzgc241PzDwgt/ZB7eaRzy/oMWQrPEj8XVritjZf5
	1HFJJJlUytVBJjNWFw2qGOhC4ytuZGOFZOY+9Cflx+ZT2wRgN2O9oMi6h41xo3zQ3Ntw7wd6mgH1w
	nxiLVnH3z9PqrZlESRAKRgIYNZ6D8r+xnhrZxlQhnsmzfDr0hGVgTuuxQNp3zAnNvwqO7KY6Wew+f
	B7JlwPWnD89XedTP5XLSxtWWnYFIiBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO0ID-0004cB-HX; Mon, 13 Apr 2020 14:42:33 +0000
Received: from mail-ua1-x92f.google.com ([2607:f8b0:4864:20::92f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO0I9-0004br-Um
 for linux-nvme@lists.infradead.org; Mon, 13 Apr 2020 14:42:31 +0000
Received: by mail-ua1-x92f.google.com with SMTP id 21so3189993uae.4
 for <linux-nvme@lists.infradead.org>; Mon, 13 Apr 2020 07:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=aJLzvaDaB+HAeUqwADIT9NxzpEv7x9fnACN37GB4vRw=;
 b=tq89qk5sGiC86LF2+OG4DxHkfQcP37P+k/8WcsrAk/T4ITQH8hBH7BWjW40/J5KMKP
 aSNeTu260M4wSzfqHE9rmCx5vw7gEfDzQqb63gkhXRmnmhCdPU6yF1WXXQKrEaV4TQNt
 4yi4nJ+7KXx+LH7dZZQlNdL6GUHOAe58gOh2ixoDONADw/SuqArEatSBCkljukEdPtDZ
 oDeMKZ8NS/zRDUTVR7o6cpAzsCGmD7Q/UArD/57DGZDXcYWjROMNV8vXstVlfyy68iUg
 sobAOW14IV1KtTmpFWqEas9lG+pW6RUdjM+iV7f1QsoOkXnzn+VNCpjT4Zy20Q3w2WeY
 DdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=aJLzvaDaB+HAeUqwADIT9NxzpEv7x9fnACN37GB4vRw=;
 b=QZ3DBgHIDNDA2bKb/24SWESkT6jFicN3cJKzTWVu6B0KBusbufGAnrYx17MvdxOKHu
 P2HqqYFsFohcvlHiXp/GWjsRwUTS7dT+Cr7K4iabN/gOqR4VHCqnLEN9sCXj369Bjmvb
 TmSNlWwaCboXC2MoZ3AG4DdKiUJpzVd8/jhh1RH80vLruSaOQCns2h1p6zzE4T1iVOxY
 HYvrfQZJTlrOXW5nqlkZ9RX5HTQbAy81Ri/AglvWCkpH0KLdIqpY800rYXECwx9CBYDa
 CApqbYBBBDw5rUqMsj6tYKNI4DOVqdUQIIZwMskpPtT0Hnn8DK4NzihpFvkWLZD6B52i
 DuUw==
X-Gm-Message-State: AGi0PuZL6KiJ/YWmldEIQef+2nccbxVhU0Ru7yVdVmZ1MHvCTI+zIT/s
 FEZlB5vcGITMUwEyZvLBfX6bJRVlYW4vyB/uza9xfj+z
X-Google-Smtp-Source: APiQypJuzr1tAv0qb82bCVgd7lBeYwFWMJyXd1LKyNHPowCMHxAcSAa2cp9Hgw4XEOq20GldN/S8yDXFXsiP6gP0anY=
X-Received: by 2002:ab0:654c:: with SMTP id x12mr11468456uap.48.1586788948672; 
 Mon, 13 Apr 2020 07:42:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6102:2ef:0:0:0:0 with HTTP; Mon, 13 Apr 2020 07:42:28
 -0700 (PDT)
From: Daegyu Han <hdg9400@gmail.com>
Date: Mon, 13 Apr 2020 23:42:28 +0900
Message-ID: <CAARcW+qZ_2sBtWtxNkFu95oNvCGbgqBpk2Gz-NYV4iW41ZD6Mw@mail.gmail.com>
Subject: bio size is limited to readahead size when doing buffered read to
 nvme over fabric target(remote nvme)
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_074229_991141_4FAEB719 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hdg9400[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hdg9400[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all, I wonder why the block layer generates bio that are
limited to readahead size when doing buffered read to nvmeof target
ssd.

I don't know it is okay to ask questions this mailing list.
I'm sorry if these personal questions were banned.

To describe in detail the environment I experimented with, it is as follows.

I used a Samsung nvme 970 ssd for storage and a Mellanox connectx-4
Infiniband for the network.
My server OS is kernel version 4.20.
I did buffered IO by using C language read() API and trace using blktrace.
NVMeoF ssd was formated as ext4.

C read API test
- I saw that the initiator sends requests to the target only as large
as the readahead(default: 128KB). After that, I changed the size of
the readahead through sysfs and the size of the request changed.
- In Direct IO, a request size set to a buffer (char array[]) size
created at the my user level program.

FIO test
- In the case fo buffered io, the request size changed according to
the block size. I think because I set the block size to 4K.
- Similarly, in the case of Direct IO, the request was made according
to the block size.

To sum up, more requests were completed in Buffered IO using C read
API than local IO to nvme ssd.
From what I have measured, I think that nvmeof in buffered io is worse
than local performance due to requests split by readahead size.
I tried to analyze the blk-mq and nvme code, but these layers are too
broad and difficult to understand.

Why is the request size set to readahead size when buffered IO is
performed to nvmeof target device?
I want to know the reason and why is the size of bio different when
buffered io on local nvme and buffered io on nvmeof target device?

I had my trace logs. If you want to see logs, I will attach my logs.

Thank you.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
