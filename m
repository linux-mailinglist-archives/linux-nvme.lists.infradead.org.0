Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC23854E3
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 23:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZETp/SlFkJzlSQzgizRWSScWh7I7C05fOcKCLsj9xKE=; b=FEu
	9bLvJOqr7VON/zANQLQyK8Pkrw2z6x8Bv10tikvVfpPWjxKT3RIHIvd9Qi8lSGyD9PgeI7KyE7X8f
	401qFU+uCmjf0dGvD0IJwctTyc6c0dml0MI7Ypsv1q8m3uWqR0JpIEZe0XkAzPf5E0kv/3+kasFKE
	kA60PqoyVcIHuQC4yUihYElSlf/hfsXmhsJQhD8Jn2DhYobqdhVoTqvVjdp7U7WTBWoQRzdH83HmU
	/eEr4cGeXjYH3tgntGuVFUXhNCB1hnGU6N94MNCbch5ASVL0TvrgSgmHV23WE+C2psbXCpfsvda0Q
	dU0LEFJ2AHPeWmbIXFW94aXIJYytQIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvT76-000325-JV; Wed, 07 Aug 2019 21:04:52 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvT6y-00031m-G9
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 21:04:45 +0000
Received: by mail-ot1-x32a.google.com with SMTP id z23so1708293ote.13
 for <linux-nvme@lists.infradead.org>; Wed, 07 Aug 2019 14:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aeoncomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=UwIX3QgSvVeenPHyzlRswcjfwQVWB1RvL6ddZkx71YQ=;
 b=gdF3OMg7MDXYwJvdsVqIZJwVr07CpcMQxRUT+iRZrwSDpln1r53vm3TR3Q40H7SrAo
 LFg/vbI4Xy5ocKIsFXoqRzlkPA/3VoL17erCCYyKyO0+vDP8/LUdpSNIFNoo2pmcPP+G
 0q5cdOYN8aTjnThtX4dOehQ0Ns57fb/zO2rPtGUXb+TfIVdmM8IM+aw5GbGEDS3JHBP2
 aslROmt1qUNRBdJKcB16Yv1PvkxUs2Kujt6U7nhxb3AfG4Qoqelsr6UC0khrw7b9Nj1M
 V1vo5yq8mYAWE0HypEs/cBxABHpmP1uPIa58xwKPQTNSQ83+3sl3HrDn0c8qJ0Qe3WVx
 jTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=UwIX3QgSvVeenPHyzlRswcjfwQVWB1RvL6ddZkx71YQ=;
 b=ry+zN/xi+i/9RQsOtoS6/7aDAgeYifyuFyj1Rl47eYjypeaMfvuuLUlZhHhYsZZX3z
 C96vaVa9ATEUNej78poNO/9MaQtLu49LQcX9l/NkKVlWr4UEApRfCcGW7fdQBB5o2elO
 O5vc8ffC3Iv4DeO15j0Z+a3GhPDHLkor7a0WYkPNXazWfKFAME8p6DouOja+0ERO1Bw9
 To6Jg00xowASxMkkPzHrNaOBGpy19UReR2TdT6cROMkhF25tioN8x8PlW5aRSh3Iv38m
 sJEkbdus6x49S8O6MjJ62he5KuGU3l4f2DZYU1qYsBVkd3+NVO4/OLIDlYkMsoimhDzb
 PMLQ==
X-Gm-Message-State: APjAAAX6gpBDPsDolfcP309hvxjNBaLpU0HacRcHISDtKroMi06c47/o
 b+WNqiCAO8ICGCM/YyU1wi3QuuUsPj2whljzW+V41DDPrgM=
X-Google-Smtp-Source: APXvYqxMCY1CfDJC1L7V+aK6/y8DDTxaJGOkmJHdd03Zljq7LWisdVW4PqZuF5Q0SamtCU/sZl8ABUcuivdfa3+L64c=
X-Received: by 2002:aca:5941:: with SMTP id n62mr87518oib.76.1565211882925;
 Wed, 07 Aug 2019 14:04:42 -0700 (PDT)
MIME-Version: 1.0
From: Jeff Johnson <jeff.johnson@aeoncomputing.com>
Date: Wed, 7 Aug 2019 14:04:32 -0700
Message-ID: <CAFCYAsfsCH+swCmpubto9od6dmJFsw0i+VDri9U+GVyZkOqcWg@mail.gmail.com>
Subject: inverting order of NVMe pci enable/disable device during
 boot/shutdown? Failing release.
To: linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_140444_536277_AE45A258 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Greetings,

Is there a way to invert the order of PCI device enable/disable during
boot or shutdown?

I have an attached NVMe SSD chassis with 24 SSDs. I have discovered
that on random host shutdowns that the last couple NVMe SSDs get left
in a bad state after they are unregistered by the kernel. Out of 24
SSDs all but the last one or two successfully remain at their
negotiated speed and width after release. The last one, or sometimes
two, SSDs to be released get stuck in a polling state (gen1, 0width)
which will not clear or resolve unless the PCIe switch is reset.

Multiple backplanes and moving SSDs doesn't change the fact that it is
always the last one or two SSDs to release on host orderly shutdown.

If I can swap the order of drive reserve/release on boot and shutdown
then I could determine if the issue follows the physical path or the
last drives in the release process.

Thanks!

--Jeff

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
